import { intArg, list, nonNull, queryField } from 'nexus'
import { Context } from '../../context'

export const getAllGroups = queryField('groups', {
  type: nonNull(list(nonNull('Group'))),
  resolve: (_parent, _args, context: Context) => {
    return context.prisma.group.findMany()
  },
})

export const getGroup = queryField('group', {
  type: 'Group',
  args: {
    id: nonNull(intArg()),
  },
  resolve: (_parent, args, context: Context) => {
    return context.prisma.group.findUnique({
      where: {
        id: args.id,
      },
    })
  },
})
