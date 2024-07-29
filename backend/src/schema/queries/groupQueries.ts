import { intArg, list, nonNull, queryField } from 'nexus'
import { Context } from '../../context'

export const getAllGroups = queryField('groups', {
  type: nonNull(list(nonNull('Group'))),
  resolve: async (_parent, _args, context: Context) => {
    return await context.prisma.group.findMany()
  },
})

export const getGroup = queryField('group', {
  type: 'Group',
  args: {
    id: nonNull(intArg()),
  },
  resolve: async (_parent, args, context: Context) => {
    return await context.prisma.group.findUnique({
      where: {
        id: args.id,
      },
    })
  },
})
