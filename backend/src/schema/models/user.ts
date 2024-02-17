import { list, objectType } from 'nexus'
import { Context } from '../../context'
import { Recipe } from './recipe'
import { Group } from './group'

export const User = objectType({
  name: 'User',
  definition(t) {
    t.nonNull.int('id')
    t.string('email')
    t.nonNull.list.nonNull.field('groups', {
      type: Group,
      resolve: async (parent, _args, context: Context) => {
        const groups = await context.prisma.user
          .findUnique({
            where: {
              id: parent.id,
            },
          })
          .groups({
            include: {
              group: true,
            },
          })

        return groups?.map((groupRelation) => groupRelation.group) ?? []
      },
    })
    t.nonNull.list.nonNull.field('recipes', {
      type: Recipe,
      resolve: (parent, _args, ctx) => {
        return ctx.prisma.user
          .findUniqueOrThrow({
            where: {
              id: parent.id,
            },
          })
          .recipes()
      },
    })
  },
})
