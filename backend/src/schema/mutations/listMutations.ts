import { arg, inputObjectType, mutationField, nonNull } from 'nexus'
import { User } from '..'
import { Context } from '../../context'

const UserListCreateInput = inputObjectType({
  name: 'UserListCreationInput',
  definition(t) {
    t.nonNull.int('userId')
    t.nonNull.string('name')
  },
})

const GroupListCreateInput = inputObjectType({
  name: 'GroupListCreationInput',
  definition(t) {
    t.nonNull.int('groupId')
    t.nonNull.string('name')
  },
})

export const addListForUser = mutationField('addListForUser', {
  type: 'List',
  args: {
    data: nonNull(UserListCreateInput),
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

export const addListToGroup = mutationField('addListToGroup', {
  type: 'List',
  args: {
    data: nonNull(GroupListCreateInput),
  },
  resolve: (_, args, context: Context) => {
    return context.prisma.list.create({
      data: {
        groupId: args.data.groupId,
        name: args.data.name,
      },
    })
  },
})
