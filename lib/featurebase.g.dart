// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featurebase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$feedbackSubmissionsHash() =>
    r'd680fecc2ea21f45bc96dfcf6ebfb0db9e6292e4';

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

/// See also [feedbackSubmissions].
@ProviderFor(feedbackSubmissions)
const feedbackSubmissionsProvider = FeedbackSubmissionsFamily();

/// See also [feedbackSubmissions].
class FeedbackSubmissionsFamily
    extends Family<AsyncValue<fb.ResultsPagination<fb.Post>>> {
  /// See also [feedbackSubmissions].
  const FeedbackSubmissionsFamily();

  /// See also [feedbackSubmissions].
  FeedbackSubmissionsProvider call({
    int page = 1,
    String orderBy = 'date',
    String direction = 'desc',
  }) {
    return FeedbackSubmissionsProvider(
      page: page,
      orderBy: orderBy,
      direction: direction,
    );
  }

  @override
  FeedbackSubmissionsProvider getProviderOverride(
    covariant FeedbackSubmissionsProvider provider,
  ) {
    return call(
      page: provider.page,
      orderBy: provider.orderBy,
      direction: provider.direction,
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
  String? get name => r'feedbackSubmissionsProvider';
}

/// See also [feedbackSubmissions].
class FeedbackSubmissionsProvider
    extends AutoDisposeFutureProvider<fb.ResultsPagination<fb.Post>> {
  /// See also [feedbackSubmissions].
  FeedbackSubmissionsProvider({
    int page = 1,
    String orderBy = 'date',
    String direction = 'desc',
  }) : this._internal(
          (ref) => feedbackSubmissions(
            ref as FeedbackSubmissionsRef,
            page: page,
            orderBy: orderBy,
            direction: direction,
          ),
          from: feedbackSubmissionsProvider,
          name: r'feedbackSubmissionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$feedbackSubmissionsHash,
          dependencies: FeedbackSubmissionsFamily._dependencies,
          allTransitiveDependencies:
              FeedbackSubmissionsFamily._allTransitiveDependencies,
          page: page,
          orderBy: orderBy,
          direction: direction,
        );

  FeedbackSubmissionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.orderBy,
    required this.direction,
  }) : super.internal();

  final int page;
  final String orderBy;
  final String direction;

  @override
  Override overrideWith(
    FutureOr<fb.ResultsPagination<fb.Post>> Function(
            FeedbackSubmissionsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FeedbackSubmissionsProvider._internal(
        (ref) => create(ref as FeedbackSubmissionsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        orderBy: orderBy,
        direction: direction,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<fb.ResultsPagination<fb.Post>>
      createElement() {
    return _FeedbackSubmissionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FeedbackSubmissionsProvider &&
        other.page == page &&
        other.orderBy == orderBy &&
        other.direction == direction;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, orderBy.hashCode);
    hash = _SystemHash.combine(hash, direction.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FeedbackSubmissionsRef
    on AutoDisposeFutureProviderRef<fb.ResultsPagination<fb.Post>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `orderBy` of this provider.
  String get orderBy;

  /// The parameter `direction` of this provider.
  String get direction;
}

class _FeedbackSubmissionsProviderElement
    extends AutoDisposeFutureProviderElement<fb.ResultsPagination<fb.Post>>
    with FeedbackSubmissionsRef {
  _FeedbackSubmissionsProviderElement(super.provider);

  @override
  int get page => (origin as FeedbackSubmissionsProvider).page;
  @override
  String get orderBy => (origin as FeedbackSubmissionsProvider).orderBy;
  @override
  String get direction => (origin as FeedbackSubmissionsProvider).direction;
}

String _$helpCenterInfoHash() => r'543b41a14be94bb62056a1a835d1c77531e03eb4';

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
String _$getUserActivitiesHash() => r'135e35b368c1927592123f24194ee1561019dd90';

/// See also [getUserActivities].
@ProviderFor(getUserActivities)
const getUserActivitiesProvider = GetUserActivitiesFamily();

/// See also [getUserActivities].
class GetUserActivitiesFamily
    extends Family<AsyncValue<List<fb.UserActivity>>> {
  /// See also [getUserActivities].
  const GetUserActivitiesFamily();

  /// See also [getUserActivities].
  GetUserActivitiesProvider call(
    String id,
  ) {
    return GetUserActivitiesProvider(
      id,
    );
  }

  @override
  GetUserActivitiesProvider getProviderOverride(
    covariant GetUserActivitiesProvider provider,
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
  String? get name => r'getUserActivitiesProvider';
}

/// See also [getUserActivities].
class GetUserActivitiesProvider
    extends AutoDisposeFutureProvider<List<fb.UserActivity>> {
  /// See also [getUserActivities].
  GetUserActivitiesProvider(
    String id,
  ) : this._internal(
          (ref) => getUserActivities(
            ref as GetUserActivitiesRef,
            id,
          ),
          from: getUserActivitiesProvider,
          name: r'getUserActivitiesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getUserActivitiesHash,
          dependencies: GetUserActivitiesFamily._dependencies,
          allTransitiveDependencies:
              GetUserActivitiesFamily._allTransitiveDependencies,
          id: id,
        );

  GetUserActivitiesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<List<fb.UserActivity>> Function(GetUserActivitiesRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetUserActivitiesProvider._internal(
        (ref) => create(ref as GetUserActivitiesRef),
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
  AutoDisposeFutureProviderElement<List<fb.UserActivity>> createElement() {
    return _GetUserActivitiesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetUserActivitiesProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetUserActivitiesRef
    on AutoDisposeFutureProviderRef<List<fb.UserActivity>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetUserActivitiesProviderElement
    extends AutoDisposeFutureProviderElement<List<fb.UserActivity>>
    with GetUserActivitiesRef {
  _GetUserActivitiesProviderElement(super.provider);

  @override
  String get id => (origin as GetUserActivitiesProvider).id;
}

String _$getCurrentUserHash() => r'495d0500a191ee002228987b62f7987bcf4cb888';

/// See also [getCurrentUser].
@ProviderFor(getCurrentUser)
final getCurrentUserProvider = AutoDisposeFutureProvider<fb.User>.internal(
  getCurrentUser,
  name: r'getCurrentUserProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getCurrentUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetCurrentUserRef = AutoDisposeFutureProviderRef<fb.User>;
String _$commentsHash() => r'18121452bd2031d736b92f78aacfd4adcc8f8162';

/// See also [comments].
@ProviderFor(comments)
const commentsProvider = CommentsFamily();

/// See also [comments].
class CommentsFamily
    extends Family<AsyncValue<fb.ResultsPagination<fb.Comment>>> {
  /// See also [comments].
  const CommentsFamily();

  /// See also [comments].
  CommentsProvider call({
    int page = 1,
    String sortBy = 'new',
    String? submissionId,
    String? changelogId,
    String? commentThreadId,
  }) {
    return CommentsProvider(
      page: page,
      sortBy: sortBy,
      submissionId: submissionId,
      changelogId: changelogId,
      commentThreadId: commentThreadId,
    );
  }

  @override
  CommentsProvider getProviderOverride(
    covariant CommentsProvider provider,
  ) {
    return call(
      page: provider.page,
      sortBy: provider.sortBy,
      submissionId: provider.submissionId,
      changelogId: provider.changelogId,
      commentThreadId: provider.commentThreadId,
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
  String? get name => r'commentsProvider';
}

/// See also [comments].
class CommentsProvider
    extends AutoDisposeFutureProvider<fb.ResultsPagination<fb.Comment>> {
  /// See also [comments].
  CommentsProvider({
    int page = 1,
    String sortBy = 'new',
    String? submissionId,
    String? changelogId,
    String? commentThreadId,
  }) : this._internal(
          (ref) => comments(
            ref as CommentsRef,
            page: page,
            sortBy: sortBy,
            submissionId: submissionId,
            changelogId: changelogId,
            commentThreadId: commentThreadId,
          ),
          from: commentsProvider,
          name: r'commentsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$commentsHash,
          dependencies: CommentsFamily._dependencies,
          allTransitiveDependencies: CommentsFamily._allTransitiveDependencies,
          page: page,
          sortBy: sortBy,
          submissionId: submissionId,
          changelogId: changelogId,
          commentThreadId: commentThreadId,
        );

  CommentsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.sortBy,
    required this.submissionId,
    required this.changelogId,
    required this.commentThreadId,
  }) : super.internal();

  final int page;
  final String sortBy;
  final String? submissionId;
  final String? changelogId;
  final String? commentThreadId;

  @override
  Override overrideWith(
    FutureOr<fb.ResultsPagination<fb.Comment>> Function(CommentsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CommentsProvider._internal(
        (ref) => create(ref as CommentsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        sortBy: sortBy,
        submissionId: submissionId,
        changelogId: changelogId,
        commentThreadId: commentThreadId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<fb.ResultsPagination<fb.Comment>>
      createElement() {
    return _CommentsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CommentsProvider &&
        other.page == page &&
        other.sortBy == sortBy &&
        other.submissionId == submissionId &&
        other.changelogId == changelogId &&
        other.commentThreadId == commentThreadId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, sortBy.hashCode);
    hash = _SystemHash.combine(hash, submissionId.hashCode);
    hash = _SystemHash.combine(hash, changelogId.hashCode);
    hash = _SystemHash.combine(hash, commentThreadId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CommentsRef
    on AutoDisposeFutureProviderRef<fb.ResultsPagination<fb.Comment>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `sortBy` of this provider.
  String get sortBy;

  /// The parameter `submissionId` of this provider.
  String? get submissionId;

  /// The parameter `changelogId` of this provider.
  String? get changelogId;

  /// The parameter `commentThreadId` of this provider.
  String? get commentThreadId;
}

class _CommentsProviderElement
    extends AutoDisposeFutureProviderElement<fb.ResultsPagination<fb.Comment>>
    with CommentsRef {
  _CommentsProviderElement(super.provider);

  @override
  int get page => (origin as CommentsProvider).page;
  @override
  String get sortBy => (origin as CommentsProvider).sortBy;
  @override
  String? get submissionId => (origin as CommentsProvider).submissionId;
  @override
  String? get changelogId => (origin as CommentsProvider).changelogId;
  @override
  String? get commentThreadId => (origin as CommentsProvider).commentThreadId;
}

String _$feedbackSubmissionsListHash() =>
    r'c0d5b5613d814f518ec31e182e937a11050d77d9';

/// See also [FeedbackSubmissionsList].
@ProviderFor(FeedbackSubmissionsList)
final feedbackSubmissionsListProvider = AutoDisposeNotifierProvider<
    FeedbackSubmissionsList, fb.ResultsPagination<fb.Post>>.internal(
  FeedbackSubmissionsList.new,
  name: r'feedbackSubmissionsListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$feedbackSubmissionsListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FeedbackSubmissionsList
    = AutoDisposeNotifier<fb.ResultsPagination<fb.Post>>;
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

String _$commentsListHash() => r'd9fe050a6c55722126ee7636eeb83fc102c7666d';

abstract class _$CommentsList
    extends BuildlessAutoDisposeNotifier<fb.ResultsPagination<fb.Comment>> {
  late final String? submissionId;
  late final String? changelogId;
  late final String? commentThreadId;

  fb.ResultsPagination<fb.Comment> build({
    String? submissionId,
    String? changelogId,
    String? commentThreadId,
  });
}

/// See also [CommentsList].
@ProviderFor(CommentsList)
const commentsListProvider = CommentsListFamily();

/// See also [CommentsList].
class CommentsListFamily extends Family<fb.ResultsPagination<fb.Comment>> {
  /// See also [CommentsList].
  const CommentsListFamily();

  /// See also [CommentsList].
  CommentsListProvider call({
    String? submissionId,
    String? changelogId,
    String? commentThreadId,
  }) {
    return CommentsListProvider(
      submissionId: submissionId,
      changelogId: changelogId,
      commentThreadId: commentThreadId,
    );
  }

  @override
  CommentsListProvider getProviderOverride(
    covariant CommentsListProvider provider,
  ) {
    return call(
      submissionId: provider.submissionId,
      changelogId: provider.changelogId,
      commentThreadId: provider.commentThreadId,
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
  String? get name => r'commentsListProvider';
}

/// See also [CommentsList].
class CommentsListProvider extends AutoDisposeNotifierProviderImpl<CommentsList,
    fb.ResultsPagination<fb.Comment>> {
  /// See also [CommentsList].
  CommentsListProvider({
    String? submissionId,
    String? changelogId,
    String? commentThreadId,
  }) : this._internal(
          () => CommentsList()
            ..submissionId = submissionId
            ..changelogId = changelogId
            ..commentThreadId = commentThreadId,
          from: commentsListProvider,
          name: r'commentsListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$commentsListHash,
          dependencies: CommentsListFamily._dependencies,
          allTransitiveDependencies:
              CommentsListFamily._allTransitiveDependencies,
          submissionId: submissionId,
          changelogId: changelogId,
          commentThreadId: commentThreadId,
        );

  CommentsListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.submissionId,
    required this.changelogId,
    required this.commentThreadId,
  }) : super.internal();

  final String? submissionId;
  final String? changelogId;
  final String? commentThreadId;

  @override
  fb.ResultsPagination<fb.Comment> runNotifierBuild(
    covariant CommentsList notifier,
  ) {
    return notifier.build(
      submissionId: submissionId,
      changelogId: changelogId,
      commentThreadId: commentThreadId,
    );
  }

  @override
  Override overrideWith(CommentsList Function() create) {
    return ProviderOverride(
      origin: this,
      override: CommentsListProvider._internal(
        () => create()
          ..submissionId = submissionId
          ..changelogId = changelogId
          ..commentThreadId = commentThreadId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        submissionId: submissionId,
        changelogId: changelogId,
        commentThreadId: commentThreadId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<CommentsList,
      fb.ResultsPagination<fb.Comment>> createElement() {
    return _CommentsListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CommentsListProvider &&
        other.submissionId == submissionId &&
        other.changelogId == changelogId &&
        other.commentThreadId == commentThreadId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, submissionId.hashCode);
    hash = _SystemHash.combine(hash, changelogId.hashCode);
    hash = _SystemHash.combine(hash, commentThreadId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CommentsListRef
    on AutoDisposeNotifierProviderRef<fb.ResultsPagination<fb.Comment>> {
  /// The parameter `submissionId` of this provider.
  String? get submissionId;

  /// The parameter `changelogId` of this provider.
  String? get changelogId;

  /// The parameter `commentThreadId` of this provider.
  String? get commentThreadId;
}

class _CommentsListProviderElement extends AutoDisposeNotifierProviderElement<
    CommentsList, fb.ResultsPagination<fb.Comment>> with CommentsListRef {
  _CommentsListProviderElement(super.provider);

  @override
  String? get submissionId => (origin as CommentsListProvider).submissionId;
  @override
  String? get changelogId => (origin as CommentsListProvider).changelogId;
  @override
  String? get commentThreadId =>
      (origin as CommentsListProvider).commentThreadId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
