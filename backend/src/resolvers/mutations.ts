import { MutationResolvers } from "../__generated__/resolvers-types";

const mutations: MutationResolvers = {
  addUser: async (_, { email, password }, { dataSources }) => {
    return dataSources.usersAPI.addUser({ email, password });
  },
};

export default mutations;
