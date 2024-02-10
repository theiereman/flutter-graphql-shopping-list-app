import { ApolloServer } from "@apollo/server";
import resolvers from "./resolvers/index";
import { startStandaloneServer } from "@apollo/server/standalone";
import { readFileSync } from "fs";

const typeDefs = readFileSync("./schema.graphql", { encoding: "utf8" });

const server = new ApolloServer({
  typeDefs,
  resolvers,
});

const { url } = await startStandaloneServer(server, {
  listen: { port: 4000 },
});

console.log(`Server started @ ${url}`);
