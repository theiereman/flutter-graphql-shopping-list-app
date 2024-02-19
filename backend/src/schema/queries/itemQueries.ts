import { list, nonNull, queryField } from 'nexus'
import { Context } from '../../context'
import { ItemCategoryArray, ItemCategory } from '../models'

export const getAllCategories = queryField('categories', {
  type: list(nonNull('String')),
  resolve: (_parent, _args, context: Context) => {
    return [...ItemCategoryArray].filter((item) => item != 'NONE')
  },
})
