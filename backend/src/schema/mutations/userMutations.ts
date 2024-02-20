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
    data: nonNull(UserCreateInput),
  },
  resolve: (_, args, context: Context) => {
    if (
      !args.data.password ||
      !/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&^])[A-Za-z\d@$!%*#?&^]{8,}$/.test(
        args.data.password,
      )
    ) {
      throw new Error(
        'Password must be at least 8 characters long and contain at least one number, one letter, and one special character (@$!%*#?&$^)',
      )
    }

    return context.prisma.user.create({
      data: {
        email: args.data.email,
        password: args.data.password,
      },
    })
  },
})
