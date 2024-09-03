// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_list_details_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$shoppingListDetailsControllerHash() =>
    r'c01afd36a832b9236c8534aaa33a933dde08d442';

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

abstract class _$ShoppingListDetailsController
    extends BuildlessAutoDisposeAsyncNotifier<ShoppingList> {
  late final int listId;

  FutureOr<ShoppingList> build(
    int listId,
  );
}

/// See also [ShoppingListDetailsController].
@ProviderFor(ShoppingListDetailsController)
const shoppingListDetailsControllerProvider =
    ShoppingListDetailsControllerFamily();

/// See also [ShoppingListDetailsController].
class ShoppingListDetailsControllerFamily
    extends Family<AsyncValue<ShoppingList>> {
  /// See also [ShoppingListDetailsController].
  const ShoppingListDetailsControllerFamily();

  /// See also [ShoppingListDetailsController].
  ShoppingListDetailsControllerProvider call(
    int listId,
  ) {
    return ShoppingListDetailsControllerProvider(
      listId,
    );
  }

  @override
  ShoppingListDetailsControllerProvider getProviderOverride(
    covariant ShoppingListDetailsControllerProvider provider,
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
  String? get name => r'shoppingListDetailsControllerProvider';
}

/// See also [ShoppingListDetailsController].
class ShoppingListDetailsControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ShoppingListDetailsController,
        ShoppingList> {
  /// See also [ShoppingListDetailsController].
  ShoppingListDetailsControllerProvider(
    int listId,
  ) : this._internal(
          () => ShoppingListDetailsController()..listId = listId,
          from: shoppingListDetailsControllerProvider,
          name: r'shoppingListDetailsControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$shoppingListDetailsControllerHash,
          dependencies: ShoppingListDetailsControllerFamily._dependencies,
          allTransitiveDependencies:
              ShoppingListDetailsControllerFamily._allTransitiveDependencies,
          listId: listId,
        );

  ShoppingListDetailsControllerProvider._internal(
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
    covariant ShoppingListDetailsController notifier,
  ) {
    return notifier.build(
      listId,
    );
  }

  @override
  Override overrideWith(ShoppingListDetailsController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ShoppingListDetailsControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<ShoppingListDetailsController,
      ShoppingList> createElement() {
    return _ShoppingListDetailsControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ShoppingListDetailsControllerProvider &&
        other.listId == listId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, listId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ShoppingListDetailsControllerRef
    on AutoDisposeAsyncNotifierProviderRef<ShoppingList> {
  /// The parameter `listId` of this provider.
  int get listId;
}

class _ShoppingListDetailsControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        ShoppingListDetailsController,
        ShoppingList> with ShoppingListDetailsControllerRef {
  _ShoppingListDetailsControllerProviderElement(super.provider);

  @override
  int get listId => (origin as ShoppingListDetailsControllerProvider).listId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
