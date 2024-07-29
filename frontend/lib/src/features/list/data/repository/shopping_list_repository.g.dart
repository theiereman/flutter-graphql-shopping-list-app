// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_list_repository.dart';

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
String _$listQueryHash() => r'07f629f8037fee5b13d11d5fdec1689b4dadc926';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [listQuery].
@ProviderFor(listQuery)
const listQueryProvider = ListQueryFamily();

/// See also [listQuery].
class ListQueryFamily extends Family<AsyncValue<ShoppingList>> {
  /// See also [listQuery].
  const ListQueryFamily();

  /// See also [listQuery].
  ListQueryProvider call(
    int id,
  ) {
    return ListQueryProvider(
      id,
    );
  }

  @override
  ListQueryProvider getProviderOverride(
    covariant ListQueryProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'listQueryProvider';
}

/// See also [listQuery].
class ListQueryProvider extends AutoDisposeFutureProvider<ShoppingList> {
  /// See also [listQuery].
  ListQueryProvider(
    int id,
  ) : this._internal(
          (ref) => listQuery(
            ref as ListQueryRef,
            id,
          ),
          from: listQueryProvider,
          name: r'listQueryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$listQueryHash,
          dependencies: ListQueryFamily._dependencies,
          allTransitiveDependencies: ListQueryFamily._allTransitiveDependencies,
          id: id,
        );

  ListQueryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<ShoppingList> Function(ListQueryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ListQueryProvider._internal(
        (ref) => create(ref as ListQueryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ShoppingList> createElement() {
    return _ListQueryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListQueryProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ListQueryRef on AutoDisposeFutureProviderRef<ShoppingList> {
  /// The parameter `id` of this provider.
  int get id;
}

class _ListQueryProviderElement
    extends AutoDisposeFutureProviderElement<ShoppingList> with ListQueryRef {
  _ListQueryProviderElement(super.provider);

  @override
  int get id => (origin as ListQueryProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
