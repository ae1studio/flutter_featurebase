// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featurebase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$helpCenterInfoHash() => r'543b41a14be94bb62056a1a835d1c77531e03eb4';

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
    r'c380d204bea1e7cb0ce1728894b1780ce0876273';

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
    r'54f41989d0e9d83ec4862292c4113c05ae6c71de';

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

String _$changelogInfoHash() => r'65c61f3d98128583a5c9dee45275e3196a522e05';

/// See also [changelogInfo].
@ProviderFor(changelogInfo)
const changelogInfoProvider = ChangelogInfoFamily();

/// See also [changelogInfo].
class ChangelogInfoFamily
    extends Family<AsyncValue<fb.ResultsPagination<fb.Changelog>>> {
  /// See also [changelogInfo].
  const ChangelogInfoFamily();

  /// See also [changelogInfo].
  ChangelogInfoProvider call(
    String locale, {
    int page = 1,
  }) {
    return ChangelogInfoProvider(
      locale,
      page: page,
    );
  }

  @override
  ChangelogInfoProvider getProviderOverride(
    covariant ChangelogInfoProvider provider,
  ) {
    return call(
      provider.locale,
      page: provider.page,
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
  String? get name => r'changelogInfoProvider';
}

/// See also [changelogInfo].
class ChangelogInfoProvider
    extends AutoDisposeFutureProvider<fb.ResultsPagination<fb.Changelog>> {
  /// See also [changelogInfo].
  ChangelogInfoProvider(
    String locale, {
    int page = 1,
  }) : this._internal(
          (ref) => changelogInfo(
            ref as ChangelogInfoRef,
            locale,
            page: page,
          ),
          from: changelogInfoProvider,
          name: r'changelogInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$changelogInfoHash,
          dependencies: ChangelogInfoFamily._dependencies,
          allTransitiveDependencies:
              ChangelogInfoFamily._allTransitiveDependencies,
          locale: locale,
          page: page,
        );

  ChangelogInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.locale,
    required this.page,
  }) : super.internal();

  final String locale;
  final int page;

  @override
  Override overrideWith(
    FutureOr<fb.ResultsPagination<fb.Changelog>> Function(
            ChangelogInfoRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChangelogInfoProvider._internal(
        (ref) => create(ref as ChangelogInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        locale: locale,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<fb.ResultsPagination<fb.Changelog>>
      createElement() {
    return _ChangelogInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChangelogInfoProvider &&
        other.locale == locale &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, locale.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChangelogInfoRef
    on AutoDisposeFutureProviderRef<fb.ResultsPagination<fb.Changelog>> {
  /// The parameter `locale` of this provider.
  String get locale;

  /// The parameter `page` of this provider.
  int get page;
}

class _ChangelogInfoProviderElement
    extends AutoDisposeFutureProviderElement<fb.ResultsPagination<fb.Changelog>>
    with ChangelogInfoRef {
  _ChangelogInfoProviderElement(super.provider);

  @override
  String get locale => (origin as ChangelogInfoProvider).locale;
  @override
  int get page => (origin as ChangelogInfoProvider).page;
}

String _$getOrganizationHash() => r'82c852bc980afa88b63a80aebf45d8cc6bdf227a';

/// See also [getOrganization].
@ProviderFor(getOrganization)
final getOrganizationProvider =
    AutoDisposeFutureProvider<fb.Organization>.internal(
  getOrganization,
  name: r'getOrganizationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getOrganizationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetOrganizationRef = AutoDisposeFutureProviderRef<fb.Organization>;
String _$changelogsListHash() => r'e5e6c8ed9a521445f46025f1c1301359c2439001';

abstract class _$ChangelogsList
    extends BuildlessAutoDisposeNotifier<fb.ResultsPagination<fb.Changelog>> {
  late final String locale;

  fb.ResultsPagination<fb.Changelog> build(
    String locale,
  );
}

/// See also [ChangelogsList].
@ProviderFor(ChangelogsList)
const changelogsListProvider = ChangelogsListFamily();

/// See also [ChangelogsList].
class ChangelogsListFamily extends Family<fb.ResultsPagination<fb.Changelog>> {
  /// See also [ChangelogsList].
  const ChangelogsListFamily();

  /// See also [ChangelogsList].
  ChangelogsListProvider call(
    String locale,
  ) {
    return ChangelogsListProvider(
      locale,
    );
  }

  @override
  ChangelogsListProvider getProviderOverride(
    covariant ChangelogsListProvider provider,
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
  String? get name => r'changelogsListProvider';
}

/// See also [ChangelogsList].
class ChangelogsListProvider extends AutoDisposeNotifierProviderImpl<
    ChangelogsList, fb.ResultsPagination<fb.Changelog>> {
  /// See also [ChangelogsList].
  ChangelogsListProvider(
    String locale,
  ) : this._internal(
          () => ChangelogsList()..locale = locale,
          from: changelogsListProvider,
          name: r'changelogsListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$changelogsListHash,
          dependencies: ChangelogsListFamily._dependencies,
          allTransitiveDependencies:
              ChangelogsListFamily._allTransitiveDependencies,
          locale: locale,
        );

  ChangelogsListProvider._internal(
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
  fb.ResultsPagination<fb.Changelog> runNotifierBuild(
    covariant ChangelogsList notifier,
  ) {
    return notifier.build(
      locale,
    );
  }

  @override
  Override overrideWith(ChangelogsList Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChangelogsListProvider._internal(
        () => create()..locale = locale,
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
  AutoDisposeNotifierProviderElement<ChangelogsList,
      fb.ResultsPagination<fb.Changelog>> createElement() {
    return _ChangelogsListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChangelogsListProvider && other.locale == locale;
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
mixin ChangelogsListRef
    on AutoDisposeNotifierProviderRef<fb.ResultsPagination<fb.Changelog>> {
  /// The parameter `locale` of this provider.
  String get locale;
}

class _ChangelogsListProviderElement extends AutoDisposeNotifierProviderElement<
    ChangelogsList, fb.ResultsPagination<fb.Changelog>> with ChangelogsListRef {
  _ChangelogsListProviderElement(super.provider);

  @override
  String get locale => (origin as ChangelogsListProvider).locale;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
