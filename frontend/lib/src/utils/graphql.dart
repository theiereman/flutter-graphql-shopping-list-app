import 'package:graphql/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'graphql.g.dart';

final _serverLink = HttpLink('http://10.0.2.2:4000');

@Riverpod(keepAlive: true)
GraphQLClient graphQLClient(GraphQLClientRef ref) {
  return GraphQLClient(link: _serverLink, cache: GraphQLCache());
}
