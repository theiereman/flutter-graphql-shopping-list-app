import { list, nonNull, queryField } from 'nexus'
import { Context } from '../../context'

export const getAllGroups = queryField('groups', {
  type: nonNull(list(nonNull('Group'))),
  resolve: (_parent, _args, context: Context) => {
    return context.prisma.group.findMany()
  },
})
