import { arg, enumType, objectType } from 'nexus'
import { Context } from '../../context'

export const ItemCategory = enumType({
  name: 'ItemCategory',
  members: [
    'NONE',
    'GROCERIES',
    'PRODUCE',
    'DAIRY',
    'MEAT_POULTRY',
    'BAKERY',
    'FROZEN_FOODS',
    'CANNED_GOODS',
    'BEVERAGES',
    'SNACKS',
    'HOUSEHOLD_ITEMS',
    'PERSONAL_CARE',
    'CLEANING_SUPPLIES',
    'HEALTH_WELLNESS',
    'BABY_CARE',
    'PET_SUPPLIES',
  ],
})

export const Item = objectType({
  name: 'Item',
  definition(t) {
    t.nonNull.int('id')
    t.nonNull.string('name')
    t.nonNull.string('description')
    t.nonNull.float('amount')
    t.string('iconUrl')
    t.string('category', {
      args: {
        categ: arg({ type: 'ItemCategory' }),
      },
      resolve: (parent, { categ }) => {
        return categ?.toString() ?? 'NONE'
      },
    })
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
