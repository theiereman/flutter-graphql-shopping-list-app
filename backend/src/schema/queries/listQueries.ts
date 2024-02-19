import {
  arg,
  booleanArg,
  inputObjectType,
  intArg,
  list,
  nonNull,
  objectType,
  queryField,
} from 'nexus'
import { Context } from '../../context'

export const getAllLists = queryField('lists', {
  type: nonNull(list(nonNull('List'))),
  resolve: (_parent, _args, context: Context) => {
    return context.prisma.list.findMany()
  },
})

export const getListsFromUser = queryField('listsFromUser', {
  type: nonNull(list(nonNull('List'))),
  args: {
    userId: nonNull(intArg()),
    includeGroupLists: nonNull(
      booleanArg({
        default: false,
        description: 'Include the lists of the groups the user take part of.',
      }),
    ),
  },
  resolve: async (_parent, args, context: Context) => {
    const user = await context.prisma.user.findUniqueOrThrow({
      where: {
        id: args.userId,
      },
      select: {
        lists: true,
        groups: {
          select: {
            group: {
              select: {
                lists: true,
              },
            },
          },
        },
      },
    })

    if (!user) {
      throw new Error(`User ${args.userId} not found`)
    }

    //TODO: find better solution to remove include when not getting groups lists
    const groupLists = args.includeGroupLists
      ? user.groups?.map((groupRelation) => groupRelation.group.lists).flat()
      : []

    return [...user.lists, ...groupLists]
  },
})
