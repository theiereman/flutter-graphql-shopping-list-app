import { objectType } from 'nexus'
import { Context } from '../../context'

export const User = objectType({
  name: 'User',
  definition(t) {
    t.nonNull.int('id')
    t.nonNull.string('email')
    // t.nonNull.list.nonNull.field('posts', {
    //   type: 'Post',
    //   resolve: (parent, _, context: Context) => {
    //     return context.prisma.user
    //       .findUnique({
    //         where: { id: parent.id || undefined },
    //       })
    //       .posts()
    //   },
    // })
  },
})
