import { idArg, intArg, mutationField, nonNull, stringArg } from 'nexus'
import { Context } from '../../context'

export const createGroup = mutationField('createGroup', {
  type: 'Group',
  args: {
    name: nonNull(stringArg()),
  },
  resolve: (_, { name }, context: Context) => {
    return context.prisma.group.create({
      data: {
        name,
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
  resolve: async (parent, { userId, groupId }, context: Context) => {
    const currentUser = await context.prisma.user.findUnique({
      where: {
        id: parseInt(userId),
      },
    })

    if (!currentUser) {
      throw new Error('User not found')
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
