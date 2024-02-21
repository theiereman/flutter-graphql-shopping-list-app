import { list, nonNull, queryField } from 'nexus'
import { Context } from '../../context'
import { ItemCategory, ItemEnums } from '../models'

export const getAllCategories = queryField('categories', {
  type: list(nonNull('ItemCategory')),
  resolve: (_parent, _args, context: Context) => {
    return Object.values(ItemEnums.ItemCategoryEnum).filter(
      (item) => item != 'NONE',
    )
  },
})

export const getAllItems = queryField('items', {
  type: list(nonNull('Item')),
  resolve: (_parent, _args, context: Context) => {
    return context.prisma.item.findMany()
  },
})
