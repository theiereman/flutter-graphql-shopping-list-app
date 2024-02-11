import { list, queryField, nonNull, intArg } from 'nexus'
import { Context } from '../../context'

export const getAllUsers = queryField('users', {
  type: nonNull(list(nonNull('User'))),
  resolve: (_parent, _args, context: Context) => {
    return context.prisma.user.findMany()
  },
})

export const getUser = queryField('user', {
  type: 'User',
  args: {
    id: nonNull(intArg()),
  },
  resolve: (_parent, args, context: Context) => {
    return context.prisma.user.findUnique({
      where: {
        id: args.id,
      },
    })
  },
})
