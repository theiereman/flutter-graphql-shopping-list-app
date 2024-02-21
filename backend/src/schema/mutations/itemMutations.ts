import { mutationField, nonNull } from 'nexus'
import { Context } from '../../context'
import { inputObjectType } from 'nexus/dist/core'

export const IngredientCreationInput = inputObjectType({
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
  },
})

//TODO: implémenter une conversion automatique des unités lors de l'ajout / modification

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
      },
    })
  },
})
