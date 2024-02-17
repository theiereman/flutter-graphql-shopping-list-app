import { objectType } from 'nexus'
import { Context } from '../../context'

export const Item = objectType({
  name: 'Item',
  definition(t) {
    t.nonNull.int('id')
    t.nonNull.string('name')
    t.field('list', {
      type: 'List',
      resolve: (parent, args, context: Context) => {
        return context.prisma.item
          .findUnique({
            where: {
              id: parent.id,
            },
          })
          .list()
      },
    })
  },
})
