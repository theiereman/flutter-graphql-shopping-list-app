import { list, objectType } from 'nexus'
import { Context } from '../../context'
import { Item } from '.'

export const List = objectType({
  name: 'List',
  definition(t) {
    t.nonNull.int('id')
    t.nonNull.string('name')
    t.nonNull.list.nonNull.field('items', {
      type: 'Item',
      resolve: (parent, args, context: Context) => {
        return context.prisma.list
          .findUniqueOrThrow({
            where: {
              id: parent.id,
            },
          })
          .items()
      },
    })
    t.field('user', {
      type: 'User',
      resolve: (parent, args, context: Context) => {
        return context.prisma.list
          .findUnique({
            where: {
              id: parent.id,
            },
          })
          .user()
      },
    })
    t.field('group', {
      type: 'Group',
      resolve: (parent, args, context: Context) => {
        return context.prisma.list
          .findUnique({
            where: {
              id: parent.id,
            },
          })
          .group()
      },
    })
  },
})
