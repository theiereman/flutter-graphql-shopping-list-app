import {
  arg,
  inputObjectType,
  intArg,
  mutationField,
  nonNull,
  nullable,
} from 'nexus'
import { User } from '..'
import { Context } from '../../context'
import {
  PASSWORD_VALIDATION_ERROR_MESSAGE,
  validatePassword,
} from '../../utils/passwordUtils'

const UserCreateInput = inputObjectType({
  name: 'UserCreateInput',
  definition(t) {
    t.nonNull.string('email')
    t.nonNull.string('password')
  },
})

const UserUpdateInput = inputObjectType({
  name: 'UserUpdateInput',
  definition(t) {
    t.nonNull.int('id')
    t.string('email')
    t.string('password')
  },
})

const UserDeleteInput = inputObjectType({
  name: 'UserDeleteInput',
  definition(t) {
    t.nonNull.int('id')
  },
})

export const createUser = mutationField('createUser', {
  type: User,
  args: {
    data: nonNull(UserCreateInput),
  },
  resolve: (_, args, context: Context) => {
    if (args.data.password && !validatePassword(args.data.password)) {
      throw new Error(PASSWORD_VALIDATION_ERROR_MESSAGE)
    }

    return context.prisma.user.create({
      data: {
        email: args.data.email,
        password: args.data.password,
      },
    })
  },
})

export const updateUser = mutationField('updateUser', {
  type: User,
  args: {
    data: nonNull(UserUpdateInput),
  },
  resolve: (_, args, context: Context) => {
    if (args.data.password && !validatePassword(args.data.password)) {
      throw new Error(PASSWORD_VALIDATION_ERROR_MESSAGE)
    }

    return context.prisma.user.update({
      where: {
        id: args.data.id,
      },
      data: {
        email: args.data.email ?? undefined,
        password: args.data.password ?? undefined,
      },
    })
  },
})

export const deleteUser = mutationField('deleteUser', {
  type: 'User',
  args: {
    data: nonNull(UserDeleteInput),
  },
  resolve: (parent, args, context: Context) => {
    return context.prisma.user.delete({
      where: {
        id: args.data.id,
      },
    })
  },
})
