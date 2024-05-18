// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_generation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gStateHash() => r'2365dc156219aa00e186ab7116435c4085d3d8f4';

/// See also [gState].
@ProviderFor(gState)
final gStateProvider = AutoDisposeProvider<String>.internal(
  gState,
  name: r'gStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GStateRef = AutoDisposeProviderRef<String>;
String _$gStateFutureHash() => r'f8ce9c5457256c101928bb80c991b229398d61cc';

/// See also [gStateFuture].
@ProviderFor(gStateFuture)
final gStateFutureProvider = AutoDisposeFutureProvider<int>.internal(
  gStateFuture,
  name: r'gStateFutureProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gStateFutureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GStateFutureRef = AutoDisposeFutureProviderRef<int>;
String _$gStateFutureKeepAliveHash() =>
    r'b10b25324397a7c7a0aa0ce6428df0cedcbeeec5';

/// See also [gStateFutureKeepAlive].
@ProviderFor(gStateFutureKeepAlive)
final gStateFutureKeepAliveProvider = FutureProvider<int>.internal(
  gStateFutureKeepAlive,
  name: r'gStateFutureKeepAliveProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$gStateFutureKeepAliveHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GStateFutureKeepAliveRef = FutureProviderRef<int>;
String _$gStateMultiplyHash() => r'570b44271a31aa2b6aaa7f4e1eebddbe1b84af00';

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

/// See also [gStateMultiply].
@ProviderFor(gStateMultiply)
const gStateMultiplyProvider = GStateMultiplyFamily();

/// See also [gStateMultiply].
class GStateMultiplyFamily extends Family<String> {
  /// See also [gStateMultiply].
  const GStateMultiplyFamily();

  /// See also [gStateMultiply].
  GStateMultiplyProvider call({
    required String firstName,
    required String secondName,
  }) {
    return GStateMultiplyProvider(
      firstName: firstName,
      secondName: secondName,
    );
  }

  @override
  GStateMultiplyProvider getProviderOverride(
    covariant GStateMultiplyProvider provider,
  ) {
    return call(
      firstName: provider.firstName,
      secondName: provider.secondName,
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
  String? get name => r'gStateMultiplyProvider';
}

/// See also [gStateMultiply].
class GStateMultiplyProvider extends AutoDisposeProvider<String> {
  /// See also [gStateMultiply].
  GStateMultiplyProvider({
    required String firstName,
    required String secondName,
  }) : this._internal(
          (ref) => gStateMultiply(
            ref as GStateMultiplyRef,
            firstName: firstName,
            secondName: secondName,
          ),
          from: gStateMultiplyProvider,
          name: r'gStateMultiplyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$gStateMultiplyHash,
          dependencies: GStateMultiplyFamily._dependencies,
          allTransitiveDependencies:
              GStateMultiplyFamily._allTransitiveDependencies,
          firstName: firstName,
          secondName: secondName,
        );

  GStateMultiplyProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.firstName,
    required this.secondName,
  }) : super.internal();

  final String firstName;
  final String secondName;

  @override
  Override overrideWith(
    String Function(GStateMultiplyRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GStateMultiplyProvider._internal(
        (ref) => create(ref as GStateMultiplyRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        firstName: firstName,
        secondName: secondName,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String> createElement() {
    return _GStateMultiplyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GStateMultiplyProvider &&
        other.firstName == firstName &&
        other.secondName == secondName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, firstName.hashCode);
    hash = _SystemHash.combine(hash, secondName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GStateMultiplyRef on AutoDisposeProviderRef<String> {
  /// The parameter `firstName` of this provider.
  String get firstName;

  /// The parameter `secondName` of this provider.
  String get secondName;
}

class _GStateMultiplyProviderElement extends AutoDisposeProviderElement<String>
    with GStateMultiplyRef {
  _GStateMultiplyProviderElement(super.provider);

  @override
  String get firstName => (origin as GStateMultiplyProvider).firstName;
  @override
  String get secondName => (origin as GStateMultiplyProvider).secondName;
}

String _$gStateNotifierHash() => r'f72d9eb7da66a04e91bc91f173d55a7e79f90c30';

/// See also [GStateNotifier].
@ProviderFor(GStateNotifier)
final gStateNotifierProvider =
    AutoDisposeNotifierProvider<GStateNotifier, int>.internal(
  GStateNotifier.new,
  name: r'gStateNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$gStateNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GStateNotifier = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
