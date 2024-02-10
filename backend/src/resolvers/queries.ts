import { QueryResolvers } from "../__generated__/resolvers-types";

const queries: QueryResolvers = {
  users: async (_, __, { dataSources }) => {
    return dataSources.usersAPI.getUsers();
  },
};

export default queries;
