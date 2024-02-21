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
  EMAIL_VALIDATION_ERROR_MESSAGE,
  PASSWORD_VALIDATION_ERROR_MESSAGE,
  emptyStringErrorMessage,
  validateEmail,
  validatePassword,
} from '../../utils/stringValidationUtils'

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
  resolve: (_, { data }, context: Context) => {
    if (!data.email) throw new Error(emptyStringErrorMessage('Email'))

    if (!validateEmail(data.email))
      throw new Error(EMAIL_VALIDATION_ERROR_MESSAGE)

    if (data.password && !validatePassword(data.password)) {
      throw new Error(PASSWORD_VALIDATION_ERROR_MESSAGE)
    }

    return context.prisma.user.create({
      data: {
        email: data.email,
        password: data.password,
      },
    })
  },
})

export const updateUser = mutationField('updateUser', {
  type: User,
  args: {
    data: nonNull(UserUpdateInput),
  },
  resolve: (_, { data }, context: Context) => {
    if (!data.email) throw new Error(emptyStringErrorMessage('Email'))

    if (!validateEmail(data.email))
      throw new Error(EMAIL_VALIDATION_ERROR_MESSAGE)

    if (data.password && !validatePassword(data.password)) {
      throw new Error(PASSWORD_VALIDATION_ERROR_MESSAGE)
    }

    return context.prisma.user.update({
      where: {
        id: data.id,
      },
      data: {
        email: data.email ?? undefined,
        password: data.password ?? undefined,
      },
    })
  },
})

export const deleteUser = mutationField('deleteUser', {
  type: 'User',
  args: {
    data: nonNull(UserDeleteInput),
  },
  resolve: (_, { data }, context: Context) => {
    return context.prisma.user.delete({
      where: {
        id: data.id,
      },
    })
  },
})
