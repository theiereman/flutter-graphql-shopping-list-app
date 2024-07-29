import { list, queryField, nonNull, intArg } from 'nexus'
import { Context } from '../../context'

export const getAllUsers = queryField('users', {
  type: nonNull(list(nonNull('User'))),
  resolve: async (_parent, _args, context: Context) => {
    return await context.prisma.user.findMany()
  },
})

export const getUser = queryField('user', {
  type: 'User',
  args: {
    id: nonNull(intArg()),
  },
  resolve: async (_parent, args, context: Context) => {
    return await context.prisma.user.findUnique({
      where: {
        id: args.id,
      },
    })
  },
})
