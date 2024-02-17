import { arg, inputObjectType, mutationField, nonNull } from 'nexus'
import { User } from '..'
import { Context } from '../../context'

const ListCreateInput = inputObjectType({
  name: 'ListCreateInput',
  definition(t) {
    t.nonNull.int('userId')
    t.nonNull.string('name')
  },
})

export const createUserList = mutationField('createListForUser', {
  type: 'List',
  args: {
    data: nonNull(
      arg({
        type: ListCreateInput,
      }),
    ),
  },
  resolve: (_, args, context: Context) => {
    return context.prisma.list.create({
      data: {
        userId: args.data.userId,
        name: args.data.name,
      },
    })
  },
})
