import { list, nonNull, queryField } from 'nexus'
import { Context } from '../../context'

export const getAllLists = queryField('lists', {
  type: nonNull(list(nonNull('List'))),
  resolve: (_parent, _args, context: Context) => {
    return context.prisma.list.findMany()
  },
})
