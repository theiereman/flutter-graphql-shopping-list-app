import { arg, inputObjectType, mutationField, nonNull } from 'nexus'
import { User } from '..'
import { Context } from '../../context'

const UserCreateInput = inputObjectType({
  name: 'UserCreateInput',
  definition(t) {
    t.nonNull.string('email')
    t.nonNull.string('password')
  },
})

export const createUser = mutationField('createUser', {
  type: User,
  args: {
    data: nonNull(
      arg({
        type: UserCreateInput,
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
