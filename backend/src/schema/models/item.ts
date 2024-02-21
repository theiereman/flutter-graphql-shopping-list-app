import { arg, enumType, objectType } from 'nexus'
import { Context } from '../../context'
//enum with the sames values as array below

export namespace ItemEnums {
  export enum ItemCategoryEnum {
    NONE = 'NONE',
    GROCERIES = 'GROCERIES', // Épicerie
    PRODUCE = 'PRODUCE', // Fruits et légumes
    DAIRY = 'DAIRY', // Produits laitiers
    MEAT_POULTRY = 'MEAT_POULTRY', // Viande et volaille
    BAKERY = 'BAKERY', // Boulangerie
    FROZEN_FOODS = 'FROZEN_FOODS', // Surgelés
    CANNED_GOODS = 'CANNED_GOODS', // Conserves
    BEVERAGES = 'BEVERAGES', // Boissons
    SNACKS = 'SNACKS', // Collations
    HOUSEHOLD_ITEMS = 'HOUSEHOLD_ITEMS', // Articles ménagers
    PERSONAL_CARE = 'PERSONAL_CARE', // Soins personnels
    CLEANING_SUPPLIES = 'CLEANING_SUPPLIES', // Produits de nettoyage
    HEALTH_WELLNESS = 'HEALTH_WELLNESS', // Santé et bien-être
    BABY_CARE = 'BABY_CARE', // Soins pour bébé
    PET_SUPPLIES = 'PET_SUPPLIES', // Fournitures pour animaux de compagnie
  }

  export enum MetricUnitEnum {
    KG = 'KG',
    G = 'GRAM',
    ML = 'ML',
    CL = 'CL',
    L = 'L',
  }

  export enum ImperialUnitEnum {
    LB = 'LB', // Livre
    OZ = 'OZ', // Once
    FL_OZ = 'FL_OZ', // Once liquide
    CUP = 'CUP', // Tasse
    PT = 'PT', // Pinte
    QT = 'QT', // Quart
    GAL = 'GAL', // Gallon
  }
}

export const ItemCategory = enumType({
  name: 'ItemCategory',
  members: Object.values(ItemEnums.ItemCategoryEnum),
})

export const MetricUnit = enumType({
  name: 'MetricUnit',
  members: Object.values(ItemEnums.MetricUnitEnum),
})

export const ImperialUnit = enumType({
  name: 'ImperialUnit',
  members: Object.values(ItemEnums.ImperialUnitEnum),
})

export const Item = objectType({
  name: 'Item',
  definition(t) {
    t.nonNull.int('id')
    t.nonNull.string('name')
    t.nonNull.string('description')
    t.string('category') //forced to enum ItemCategory in mutation / queries
    t.nonNull.float('amount')
    t.string('metricUnit') //enum
    t.string('imperialUnit') //enum
    t.string('iconUrl')
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
