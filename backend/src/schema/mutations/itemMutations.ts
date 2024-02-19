import { idArg, intArg, mutationField, nonNull, stringArg } from 'nexus'
import { Context } from '../../context'
import { ItemCategory } from '../models'
import { NexusEnumTypeDef } from 'nexus/dist/core'

export const createItem = mutationField('createItem', {
  type: 'Item',
  args: {
    name: nonNull(stringArg()),
    category: nonNull(ItemCategory.asArg({ default: 'NONE' })),
  },
  resolve: (_, args, context: Context) => {
    return context.prisma.item.create({
      data: {
        name: args.name,
        description: '',
        iconUrl: '',
        amount: 1,
        category: args.category,
      },
    })
  },
})
