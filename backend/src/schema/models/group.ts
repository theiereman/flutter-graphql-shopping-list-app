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
        const users = await context.prisma.usersOnGroups.findMany({
          where: {
            groupId: parent.id,
          },
          include: {
            user: true,
          },
        })

        return users.map((userRelation) => userRelation.user)
      },
    })
  },
})
