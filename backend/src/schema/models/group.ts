import { list, nonNull, objectType } from 'nexus'
import { Context } from '../../context'

export const Group = objectType({
  name: 'Group',
  definition(t) {
    t.nonNull.int('id')
    t.nonNull.string('name')
    t.nonNull.list.nonNull.field('users', {
      type: 'User',
      resolve: async (parent, _, context: Context) => {
        const users = await context.prisma.group
          .findUnique({
            where: {
              id: parent.id,
            },
          })
          .users({
            include: {
              user: true,
            },
          })

        return users?.map((userRelation) => userRelation.user) ?? []
      },
    }),
      t.nonNull.list.nonNull.field('lists', {
        type: 'List',
        resolve: (parent, _args, ctx) => {
          return ctx.prisma.group
            .findUniqueOrThrow({
              where: {
                id: parent.id,
              },
            })
            .lists()
        },
      })
  },
})
