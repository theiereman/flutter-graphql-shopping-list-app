import 'package:flutter/material.dart';
import 'package:frontend/src/utils/graphql.dart';
import 'package:graphql/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../../generated/input/generated/output/schema.graphql.dart';

part 'list_repository.g.dart';

// @riverpod
// Future<void> ListRepository(ListRepositoryRef ref) async {
//   final graphQL = ref.watch(graphQLClientProvider);
//   return await graphQL.
// }

class ListRepository {
  const ListRepository(this._graphQLClient);
  final GraphQLClient _graphQLClient;

  Future<void> fetchLists() async {
    //TODO implémenter une requête graphql avec graphql_codegen et graphql client
    throw Exception("Not implemented");
  }
}

@Riverpod(keepAlive: true)
ListRepository listRepository(ListRepositoryRef ref) {
  return ListRepository(ref.watch(graphQLClientProvider));
}
