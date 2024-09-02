import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'graphql.g.dart';

const _defaultURI = 'http://10.0.2.2:4000'; //for mobile dev
final _serverLink = HttpLink(dotenv.env['SERVER_URI'] ?? _defaultURI);

@Riverpod(keepAlive: true)
GraphQLClient graphQLClient(GraphQLClientRef ref) {
  return GraphQLClient(
      defaultPolicies: DefaultPolicies(
          query:
              Policies(fetch: FetchPolicy.networkOnly, error: ErrorPolicy.all)),
      link: _serverLink,
      cache: GraphQLCache());
}
