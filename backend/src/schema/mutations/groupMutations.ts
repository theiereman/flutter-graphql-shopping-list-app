import {
  idArg,
  inputObjectType,
  intArg,
  mutationField,
  nonNull,
  stringArg,
} from 'nexus'
import { Context } from '../../context'
import { emptyStringErrorMessage } from '../../utils/stringValidationUtils'

const GroupCreateInput = inputObjectType({
  name: 'GroupCreateInput',
  definition(t) {
    t.nonNull.string('name')
  },
})

const GroupUpdateInput = inputObjectType({
  name: 'GroupUpdateInput',
  definition(t) {
    t.nonNull.int('id')
    t.nonNull.string('name')
  },
})

export const createGroup = mutationField('createGroup', {
  type: 'Group',
  args: {
    data: nonNull(GroupCreateInput),
  },
  resolve: (_, { data }, context: Context) => {
    if (!data.name) throw new Error(emptyStringErrorMessage('Name'))

    return context.prisma.group.create({
      data: {
        name: data.name,
      },
    })
  },
})

export const updateGroup = mutationField('updateGroup', {
  type: 'Group',
  args: {
    data: nonNull(GroupUpdateInput),
  },
  resolve: (_, { data }, context: Context) => {
    if (!data.name) throw new Error(emptyStringErrorMessage('Name'))

    return context.prisma.group.update({
      where: {
        id: data.id,
      },
      data: {
        name: data.name,
      },
    })
  },
})

export const addUserToGroup = mutationField('addUserToGroup', {
  type: 'User',
  args: {
    userId: nonNull(idArg()),
    groupId: nonNull(idArg()),
  },
  resolve: async (_, { userId, groupId }, context: Context) => {
    const currentUser = await context.prisma.user.findUnique({
      where: {
        id: parseInt(userId),
      },
    })

    if (!currentUser) {
      throw new Error(`User ${userId} not found`)
    }

    return context.prisma.user.update({
      where: {
        id: parseInt(userId),
      },
      data: {
        groups: {
          create: [
            {
              group: {
                connectOrCreate: {
                  where: {
                    id: parseInt(groupId),
                  },
                  create: {
                    name: currentUser.email + "'s group",
                  },
                },
              },
            },
          ],
        },
      },
    })
  },
})
