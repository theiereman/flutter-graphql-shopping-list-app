// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listRepositoryHash() => r'dbc88dde2cd37e66c27ab6f155270c8e124c7aa8';

/// See also [listRepository].
@ProviderFor(listRepository)
final listRepositoryProvider = Provider<ListRepository>.internal(
  listRepository,
  name: r'listRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$listRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ListRepositoryRef = ProviderRef<ListRepository>;
String _$listsQueryHash() => r'e17c756ee340c42e514299ba3bdc688248dd7af5';

/// See also [listsQuery].
@ProviderFor(listsQuery)
final listsQueryProvider =
    AutoDisposeFutureProvider<List<ShoppingList>>.internal(
  listsQuery,
  name: r'listsQueryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$listsQueryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ListsQueryRef = AutoDisposeFutureProviderRef<List<ShoppingList>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
