// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shell_controller_implementation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$shellControllerImplementationHash() =>
    r'80937e4ed5a1ddd48bba6a3e1358dd3199b0b970';

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

abstract class _$ShellControllerImplementation
    extends BuildlessAutoDisposeNotifier<ShellModel> {
  late final ShellNavigationService navigationService;

  ShellModel build({
    required ShellNavigationService navigationService,
  });
}

/// See also [ShellControllerImplementation].
@ProviderFor(ShellControllerImplementation)
const shellControllerImplementationProvider =
    ShellControllerImplementationFamily();

/// See also [ShellControllerImplementation].
class ShellControllerImplementationFamily extends Family<ShellModel> {
  /// See also [ShellControllerImplementation].
  const ShellControllerImplementationFamily();

  /// See also [ShellControllerImplementation].
  ShellControllerImplementationProvider call({
    required ShellNavigationService navigationService,
  }) {
    return ShellControllerImplementationProvider(
      navigationService: navigationService,
    );
  }

  @override
  ShellControllerImplementationProvider getProviderOverride(
    covariant ShellControllerImplementationProvider provider,
  ) {
    return call(
      navigationService: provider.navigationService,
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
  String? get name => r'shellControllerImplementationProvider';
}

/// See also [ShellControllerImplementation].
class ShellControllerImplementationProvider
    extends AutoDisposeNotifierProviderImpl<ShellControllerImplementation,
        ShellModel> {
  /// See also [ShellControllerImplementation].
  ShellControllerImplementationProvider({
    required ShellNavigationService navigationService,
  }) : this._internal(
          () => ShellControllerImplementation()
            ..navigationService = navigationService,
          from: shellControllerImplementationProvider,
          name: r'shellControllerImplementationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$shellControllerImplementationHash,
          dependencies: ShellControllerImplementationFamily._dependencies,
          allTransitiveDependencies:
              ShellControllerImplementationFamily._allTransitiveDependencies,
          navigationService: navigationService,
        );

  ShellControllerImplementationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
  }) : super.internal();

  final ShellNavigationService navigationService;

  @override
  ShellModel runNotifierBuild(
    covariant ShellControllerImplementation notifier,
  ) {
    return notifier.build(
      navigationService: navigationService,
    );
  }

  @override
  Override overrideWith(ShellControllerImplementation Function() create) {
    return ProviderOverride(
      origin: this,
      override: ShellControllerImplementationProvider._internal(
        () => create()..navigationService = navigationService,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        navigationService: navigationService,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ShellControllerImplementation, ShellModel>
      createElement() {
    return _ShellControllerImplementationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ShellControllerImplementationProvider &&
        other.navigationService == navigationService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ShellControllerImplementationRef
    on AutoDisposeNotifierProviderRef<ShellModel> {
  /// The parameter `navigationService` of this provider.
  ShellNavigationService get navigationService;
}

class _ShellControllerImplementationProviderElement
    extends AutoDisposeNotifierProviderElement<ShellControllerImplementation,
        ShellModel> with ShellControllerImplementationRef {
  _ShellControllerImplementationProviderElement(super.provider);

  @override
  ShellNavigationService get navigationService =>
      (origin as ShellControllerImplementationProvider).navigationService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
