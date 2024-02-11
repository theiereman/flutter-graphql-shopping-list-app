import { objectType, nonNull, arg, inputObjectType } from 'nexus'
import { Context } from '../context'

export const UserCreateInput = inputObjectType({
  name: 'UserCreateInput',
  definition(t) {
    t.nonNull.string('email')
    t.nonNull.string('password')
  },
})

export const Mutation = objectType({
  name: 'Mutation',
  definition(t) {
    t.nonNull.field('addUser', {
      type: 'User',
      args: {
        data: nonNull(
          arg({
            type: 'UserCreateInput',
          }),
        ),
      },
      resolve: (_, args, context: Context) => {
        return context.prisma.user.create({
          data: {
            email: args.data.email,
            password: args.data.password,
          },
        })
      },
    })
  },
})
