// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featurebase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$helpCenterInfoHash() => r'8643af459878f187e9b9e28d230f4ad9f31ce273';

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

/// See also [helpCenterInfo].
@ProviderFor(helpCenterInfo)
const helpCenterInfoProvider = HelpCenterInfoFamily();

/// See also [helpCenterInfo].
class HelpCenterInfoFamily extends Family<AsyncValue<fb.HelpCenter>> {
  /// See also [helpCenterInfo].
  const HelpCenterInfoFamily();

  /// See also [helpCenterInfo].
  HelpCenterInfoProvider call(
    String locale,
  ) {
    return HelpCenterInfoProvider(
      locale,
    );
  }

  @override
  HelpCenterInfoProvider getProviderOverride(
    covariant HelpCenterInfoProvider provider,
  ) {
    return call(
      provider.locale,
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
  String? get name => r'helpCenterInfoProvider';
}

/// See also [helpCenterInfo].
class HelpCenterInfoProvider extends AutoDisposeFutureProvider<fb.HelpCenter> {
  /// See also [helpCenterInfo].
  HelpCenterInfoProvider(
    String locale,
  ) : this._internal(
          (ref) => helpCenterInfo(
            ref as HelpCenterInfoRef,
            locale,
          ),
          from: helpCenterInfoProvider,
          name: r'helpCenterInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$helpCenterInfoHash,
          dependencies: HelpCenterInfoFamily._dependencies,
          allTransitiveDependencies:
              HelpCenterInfoFamily._allTransitiveDependencies,
          locale: locale,
        );

  HelpCenterInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.locale,
  }) : super.internal();

  final String locale;

  @override
  Override overrideWith(
    FutureOr<fb.HelpCenter> Function(HelpCenterInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HelpCenterInfoProvider._internal(
        (ref) => create(ref as HelpCenterInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        locale: locale,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<fb.HelpCenter> createElement() {
    return _HelpCenterInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HelpCenterInfoProvider && other.locale == locale;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, locale.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin HelpCenterInfoRef on AutoDisposeFutureProviderRef<fb.HelpCenter> {
  /// The parameter `locale` of this provider.
  String get locale;
}

class _HelpCenterInfoProviderElement
    extends AutoDisposeFutureProviderElement<fb.HelpCenter>
    with HelpCenterInfoRef {
  _HelpCenterInfoProviderElement(super.provider);

  @override
  String get locale => (origin as HelpCenterInfoProvider).locale;
}

String _$getHelpCenterArticleHash() =>
    r'f2ce4b83b4b01cfb9f27307afc5061123f66f790';

/// See also [getHelpCenterArticle].
@ProviderFor(getHelpCenterArticle)
const getHelpCenterArticleProvider = GetHelpCenterArticleFamily();

/// See also [getHelpCenterArticle].
class GetHelpCenterArticleFamily extends Family<AsyncValue<fb.Article>> {
  /// See also [getHelpCenterArticle].
  const GetHelpCenterArticleFamily();

  /// See also [getHelpCenterArticle].
  GetHelpCenterArticleProvider call(
    String articleId,
    String locale,
  ) {
    return GetHelpCenterArticleProvider(
      articleId,
      locale,
    );
  }

  @override
  GetHelpCenterArticleProvider getProviderOverride(
    covariant GetHelpCenterArticleProvider provider,
  ) {
    return call(
      provider.articleId,
      provider.locale,
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
  String? get name => r'getHelpCenterArticleProvider';
}

/// See also [getHelpCenterArticle].
class GetHelpCenterArticleProvider
    extends AutoDisposeFutureProvider<fb.Article> {
  /// See also [getHelpCenterArticle].
  GetHelpCenterArticleProvider(
    String articleId,
    String locale,
  ) : this._internal(
          (ref) => getHelpCenterArticle(
            ref as GetHelpCenterArticleRef,
            articleId,
            locale,
          ),
          from: getHelpCenterArticleProvider,
          name: r'getHelpCenterArticleProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getHelpCenterArticleHash,
          dependencies: GetHelpCenterArticleFamily._dependencies,
          allTransitiveDependencies:
              GetHelpCenterArticleFamily._allTransitiveDependencies,
          articleId: articleId,
          locale: locale,
        );

  GetHelpCenterArticleProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.articleId,
    required this.locale,
  }) : super.internal();

  final String articleId;
  final String locale;

  @override
  Override overrideWith(
    FutureOr<fb.Article> Function(GetHelpCenterArticleRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetHelpCenterArticleProvider._internal(
        (ref) => create(ref as GetHelpCenterArticleRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        articleId: articleId,
        locale: locale,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<fb.Article> createElement() {
    return _GetHelpCenterArticleProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetHelpCenterArticleProvider &&
        other.articleId == articleId &&
        other.locale == locale;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, articleId.hashCode);
    hash = _SystemHash.combine(hash, locale.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetHelpCenterArticleRef on AutoDisposeFutureProviderRef<fb.Article> {
  /// The parameter `articleId` of this provider.
  String get articleId;

  /// The parameter `locale` of this provider.
  String get locale;
}

class _GetHelpCenterArticleProviderElement
    extends AutoDisposeFutureProviderElement<fb.Article>
    with GetHelpCenterArticleRef {
  _GetHelpCenterArticleProviderElement(super.provider);

  @override
  String get articleId => (origin as GetHelpCenterArticleProvider).articleId;
  @override
  String get locale => (origin as GetHelpCenterArticleProvider).locale;
}

String _$getHelpCenterArticleBodyHash() =>
    r'a047ce78265d01d2480763616b8a5e1b903361ab';

/// See also [getHelpCenterArticleBody].
@ProviderFor(getHelpCenterArticleBody)
const getHelpCenterArticleBodyProvider = GetHelpCenterArticleBodyFamily();

/// See also [getHelpCenterArticleBody].
class GetHelpCenterArticleBodyFamily extends Family<AsyncValue<String?>> {
  /// See also [getHelpCenterArticleBody].
  const GetHelpCenterArticleBodyFamily();

  /// See also [getHelpCenterArticleBody].
  GetHelpCenterArticleBodyProvider call(
    String articleId,
    String? preLoadedBody,
    String locale,
  ) {
    return GetHelpCenterArticleBodyProvider(
      articleId,
      preLoadedBody,
      locale,
    );
  }

  @override
  GetHelpCenterArticleBodyProvider getProviderOverride(
    covariant GetHelpCenterArticleBodyProvider provider,
  ) {
    return call(
      provider.articleId,
      provider.preLoadedBody,
      provider.locale,
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
  String? get name => r'getHelpCenterArticleBodyProvider';
}

/// See also [getHelpCenterArticleBody].
class GetHelpCenterArticleBodyProvider
    extends AutoDisposeFutureProvider<String?> {
  /// See also [getHelpCenterArticleBody].
  GetHelpCenterArticleBodyProvider(
    String articleId,
    String? preLoadedBody,
    String locale,
  ) : this._internal(
          (ref) => getHelpCenterArticleBody(
            ref as GetHelpCenterArticleBodyRef,
            articleId,
            preLoadedBody,
            locale,
          ),
          from: getHelpCenterArticleBodyProvider,
          name: r'getHelpCenterArticleBodyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getHelpCenterArticleBodyHash,
          dependencies: GetHelpCenterArticleBodyFamily._dependencies,
          allTransitiveDependencies:
              GetHelpCenterArticleBodyFamily._allTransitiveDependencies,
          articleId: articleId,
          preLoadedBody: preLoadedBody,
          locale: locale,
        );

  GetHelpCenterArticleBodyProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.articleId,
    required this.preLoadedBody,
    required this.locale,
  }) : super.internal();

  final String articleId;
  final String? preLoadedBody;
  final String locale;

  @override
  Override overrideWith(
    FutureOr<String?> Function(GetHelpCenterArticleBodyRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetHelpCenterArticleBodyProvider._internal(
        (ref) => create(ref as GetHelpCenterArticleBodyRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        articleId: articleId,
        preLoadedBody: preLoadedBody,
        locale: locale,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String?> createElement() {
    return _GetHelpCenterArticleBodyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetHelpCenterArticleBodyProvider &&
        other.articleId == articleId &&
        other.preLoadedBody == preLoadedBody &&
        other.locale == locale;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, articleId.hashCode);
    hash = _SystemHash.combine(hash, preLoadedBody.hashCode);
    hash = _SystemHash.combine(hash, locale.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetHelpCenterArticleBodyRef on AutoDisposeFutureProviderRef<String?> {
  /// The parameter `articleId` of this provider.
  String get articleId;

  /// The parameter `preLoadedBody` of this provider.
  String? get preLoadedBody;

  /// The parameter `locale` of this provider.
  String get locale;
}

class _GetHelpCenterArticleBodyProviderElement
    extends AutoDisposeFutureProviderElement<String?>
    with GetHelpCenterArticleBodyRef {
  _GetHelpCenterArticleBodyProviderElement(super.provider);

  @override
  String get articleId =>
      (origin as GetHelpCenterArticleBodyProvider).articleId;
  @override
  String? get preLoadedBody =>
      (origin as GetHelpCenterArticleBodyProvider).preLoadedBody;
  @override
  String get locale => (origin as GetHelpCenterArticleBodyProvider).locale;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
