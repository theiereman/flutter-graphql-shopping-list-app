// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$shoppingListControllerHash() =>
    r'e9b1a399fa72c504c7e8ee368f640fb20fb91ecb';

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

abstract class _$ShoppingListController
    extends BuildlessAutoDisposeAsyncNotifier<ShoppingList> {
  late final int listId;

  FutureOr<ShoppingList> build(
    int listId,
  );
}

/// See also [ShoppingListController].
@ProviderFor(ShoppingListController)
const shoppingListControllerProvider = ShoppingListControllerFamily();

/// See also [ShoppingListController].
class ShoppingListControllerFamily extends Family<AsyncValue<ShoppingList>> {
  /// See also [ShoppingListController].
  const ShoppingListControllerFamily();

  /// See also [ShoppingListController].
  ShoppingListControllerProvider call(
    int listId,
  ) {
    return ShoppingListControllerProvider(
      listId,
    );
  }

  @override
  ShoppingListControllerProvider getProviderOverride(
    covariant ShoppingListControllerProvider provider,
  ) {
    return call(
      provider.listId,
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
  String? get name => r'shoppingListControllerProvider';
}

/// See also [ShoppingListController].
class ShoppingListControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ShoppingListController,
        ShoppingList> {
  /// See also [ShoppingListController].
  ShoppingListControllerProvider(
    int listId,
  ) : this._internal(
          () => ShoppingListController()..listId = listId,
          from: shoppingListControllerProvider,
          name: r'shoppingListControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$shoppingListControllerHash,
          dependencies: ShoppingListControllerFamily._dependencies,
          allTransitiveDependencies:
              ShoppingListControllerFamily._allTransitiveDependencies,
          listId: listId,
        );

  ShoppingListControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.listId,
  }) : super.internal();

  final int listId;

  @override
  FutureOr<ShoppingList> runNotifierBuild(
    covariant ShoppingListController notifier,
  ) {
    return notifier.build(
      listId,
    );
  }

  @override
  Override overrideWith(ShoppingListController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ShoppingListControllerProvider._internal(
        () => create()..listId = listId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        listId: listId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ShoppingListController, ShoppingList>
      createElement() {
    return _ShoppingListControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ShoppingListControllerProvider && other.listId == listId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, listId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ShoppingListControllerRef
    on AutoDisposeAsyncNotifierProviderRef<ShoppingList> {
  /// The parameter `listId` of this provider.
  int get listId;
}

class _ShoppingListControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ShoppingListController,
        ShoppingList> with ShoppingListControllerRef {
  _ShoppingListControllerProviderElement(super.provider);

  @override
  int get listId => (origin as ShoppingListControllerProvider).listId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
