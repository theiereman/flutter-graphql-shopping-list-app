import { mutationField, nonNull } from 'nexus'
import { Context } from '../../context'
import { inputObjectType } from 'nexus/dist/core'

const AddItemToListInput = inputObjectType({
  name: 'ItemCreationInput',
  definition(t) {
    t.nonNull.string('name')
    t.string('description')
    t.nonNull.field('category', {
      type: 'ItemCategory',
      default: 'NONE',
    })
    t.nonNull.float('amount', {
      default: 1,
    })
  },
})

const IngredientCreationInput = inputObjectType({
  name: 'IngredientCreationInput',
  definition(t) {
    t.nonNull.string('name')
    t.string('description')
    t.nonNull.field('category', {
      type: 'ItemCategory',
      default: 'NONE',
    })
    t.nonNull.float('amount', {
      default: 1,
    })
    t.nonNull.int('listId')
  },
})

export const createItem = mutationField('createItem', {
  type: 'Item',
  args: {
    data: nonNull(IngredientCreationInput),
  },
  resolve: (_, { data }, context: Context) => {
    return context.prisma.item.create({
      data: {
        name: data.name,
        description: '',
        iconUrl: '',
        amount: data.amount,
        category: data.category,
        listId: data.listId,
      },
    })
  },
})
