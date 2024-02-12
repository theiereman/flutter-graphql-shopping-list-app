import { objectType } from 'nexus'

export const Recipe = objectType({
  name: 'Recipe',
  definition(t) {
    t.nonNull.int('id')
    t.nonNull.string('name')
  },
})
