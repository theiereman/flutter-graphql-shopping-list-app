import { objectType } from 'nexus'
import { Context } from '../context'
import { User } from '.'

export const Query = objectType({
  name: 'Query',
  definition(t) {
    t.nonNull.list.nonNull.field('allUsers', {
      type: User,
      resolve: (_parent, _args, context: Context) => {
        return context.prisma.user.findMany()
      },
    })
  },
})
