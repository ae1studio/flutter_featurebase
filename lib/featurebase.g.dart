// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featurebase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Organization

@ProviderFor(getOrganization)
const getOrganizationProvider = GetOrganizationProvider._();

/// Organization

final class GetOrganizationProvider extends $FunctionalProvider<
        AsyncValue<fb.Organization>, fb.Organization, FutureOr<fb.Organization>>
    with $FutureModifier<fb.Organization>, $FutureProvider<fb.Organization> {
  /// Organization
  const GetOrganizationProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getOrganizationProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getOrganizationHash();

  @$internal
  @override
  $FutureProviderElement<fb.Organization> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<fb.Organization> create(Ref ref) {
    return getOrganization(ref);
  }
}

String _$getOrganizationHash() => r'82c852bc980afa88b63a80aebf45d8cc6bdf227a';

@ProviderFor(getUserActivities)
const getUserActivitiesProvider = GetUserActivitiesFamily._();

final class GetUserActivitiesProvider extends $FunctionalProvider<
        AsyncValue<List<fb.UserActivity>>,
        List<fb.UserActivity>,
        FutureOr<List<fb.UserActivity>>>
    with
        $FutureModifier<List<fb.UserActivity>>,
        $FutureProvider<List<fb.UserActivity>> {
  const GetUserActivitiesProvider._(
      {required GetUserActivitiesFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'getUserActivitiesProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getUserActivitiesHash();

  @override
  String toString() {
    return r'getUserActivitiesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<fb.UserActivity>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<fb.UserActivity>> create(Ref ref) {
    final argument = this.argument as String;
    return getUserActivities(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GetUserActivitiesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getUserActivitiesHash() => r'135e35b368c1927592123f24194ee1561019dd90';

final class GetUserActivitiesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<fb.UserActivity>>, String> {
  const GetUserActivitiesFamily._()
      : super(
          retry: null,
          name: r'getUserActivitiesProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  GetUserActivitiesProvider call(
    String id,
  ) =>
      GetUserActivitiesProvider._(argument: id, from: this);

  @override
  String toString() => r'getUserActivitiesProvider';
}

/// Help Center

@ProviderFor(helpCenterInfo)
const helpCenterInfoProvider = HelpCenterInfoFamily._();

/// Help Center

final class HelpCenterInfoProvider extends $FunctionalProvider<
        AsyncValue<fb.HelpCenter>, fb.HelpCenter, FutureOr<fb.HelpCenter>>
    with $FutureModifier<fb.HelpCenter>, $FutureProvider<fb.HelpCenter> {
  /// Help Center
  const HelpCenterInfoProvider._(
      {required HelpCenterInfoFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'helpCenterInfoProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$helpCenterInfoHash();

  @override
  String toString() {
    return r'helpCenterInfoProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<fb.HelpCenter> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<fb.HelpCenter> create(Ref ref) {
    final argument = this.argument as String;
    return helpCenterInfo(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is HelpCenterInfoProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$helpCenterInfoHash() => r'543b41a14be94bb62056a1a835d1c77531e03eb4';

/// Help Center

final class HelpCenterInfoFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<fb.HelpCenter>, String> {
  const HelpCenterInfoFamily._()
      : super(
          retry: null,
          name: r'helpCenterInfoProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Help Center

  HelpCenterInfoProvider call(
    String locale,
  ) =>
      HelpCenterInfoProvider._(argument: locale, from: this);

  @override
  String toString() => r'helpCenterInfoProvider';
}

@ProviderFor(getHelpCenterArticle)
const getHelpCenterArticleProvider = GetHelpCenterArticleFamily._();

final class GetHelpCenterArticleProvider extends $FunctionalProvider<
        AsyncValue<fb.Article>, fb.Article, FutureOr<fb.Article>>
    with $FutureModifier<fb.Article>, $FutureProvider<fb.Article> {
  const GetHelpCenterArticleProvider._(
      {required GetHelpCenterArticleFamily super.from,
      required (
        String,
        String,
      )
          super.argument})
      : super(
          retry: null,
          name: r'getHelpCenterArticleProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getHelpCenterArticleHash();

  @override
  String toString() {
    return r'getHelpCenterArticleProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<fb.Article> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<fb.Article> create(Ref ref) {
    final argument = this.argument as (
      String,
      String,
    );
    return getHelpCenterArticle(
      ref,
      argument.$1,
      argument.$2,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GetHelpCenterArticleProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getHelpCenterArticleHash() =>
    r'c380d204bea1e7cb0ce1728894b1780ce0876273';

final class GetHelpCenterArticleFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<fb.Article>,
            (
              String,
              String,
            )> {
  const GetHelpCenterArticleFamily._()
      : super(
          retry: null,
          name: r'getHelpCenterArticleProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  GetHelpCenterArticleProvider call(
    String articleId,
    String locale,
  ) =>
      GetHelpCenterArticleProvider._(argument: (
        articleId,
        locale,
      ), from: this);

  @override
  String toString() => r'getHelpCenterArticleProvider';
}

@ProviderFor(getHelpCenterArticleBody)
const getHelpCenterArticleBodyProvider = GetHelpCenterArticleBodyFamily._();

final class GetHelpCenterArticleBodyProvider
    extends $FunctionalProvider<AsyncValue<String?>, String?, FutureOr<String?>>
    with $FutureModifier<String?>, $FutureProvider<String?> {
  const GetHelpCenterArticleBodyProvider._(
      {required GetHelpCenterArticleBodyFamily super.from,
      required (
        String,
        String?,
        String,
      )
          super.argument})
      : super(
          retry: null,
          name: r'getHelpCenterArticleBodyProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getHelpCenterArticleBodyHash();

  @override
  String toString() {
    return r'getHelpCenterArticleBodyProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String?> create(Ref ref) {
    final argument = this.argument as (
      String,
      String?,
      String,
    );
    return getHelpCenterArticleBody(
      ref,
      argument.$1,
      argument.$2,
      argument.$3,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GetHelpCenterArticleBodyProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getHelpCenterArticleBodyHash() =>
    r'54f41989d0e9d83ec4862292c4113c05ae6c71de';

final class GetHelpCenterArticleBodyFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<String?>,
            (
              String,
              String?,
              String,
            )> {
  const GetHelpCenterArticleBodyFamily._()
      : super(
          retry: null,
          name: r'getHelpCenterArticleBodyProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  GetHelpCenterArticleBodyProvider call(
    String articleId,
    String? preLoadedBody,
    String locale,
  ) =>
      GetHelpCenterArticleBodyProvider._(argument: (
        articleId,
        preLoadedBody,
        locale,
      ), from: this);

  @override
  String toString() => r'getHelpCenterArticleBodyProvider';
}

/// Feedback

@ProviderFor(feedbackSubmissions)
const feedbackSubmissionsProvider = FeedbackSubmissionsFamily._();

/// Feedback

final class FeedbackSubmissionsProvider extends $FunctionalProvider<
        AsyncValue<fb.ResultsPagination<fb.Post>>,
        fb.ResultsPagination<fb.Post>,
        FutureOr<fb.ResultsPagination<fb.Post>>>
    with
        $FutureModifier<fb.ResultsPagination<fb.Post>>,
        $FutureProvider<fb.ResultsPagination<fb.Post>> {
  /// Feedback
  const FeedbackSubmissionsProvider._(
      {required FeedbackSubmissionsFamily super.from,
      required ({
        int page,
        String orderBy,
        String direction,
      })
          super.argument})
      : super(
          retry: null,
          name: r'feedbackSubmissionsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$feedbackSubmissionsHash();

  @override
  String toString() {
    return r'feedbackSubmissionsProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<fb.ResultsPagination<fb.Post>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<fb.ResultsPagination<fb.Post>> create(Ref ref) {
    final argument = this.argument as ({
      int page,
      String orderBy,
      String direction,
    });
    return feedbackSubmissions(
      ref,
      page: argument.page,
      orderBy: argument.orderBy,
      direction: argument.direction,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FeedbackSubmissionsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$feedbackSubmissionsHash() =>
    r'd680fecc2ea21f45bc96dfcf6ebfb0db9e6292e4';

/// Feedback

final class FeedbackSubmissionsFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<fb.ResultsPagination<fb.Post>>,
            ({
              int page,
              String orderBy,
              String direction,
            })> {
  const FeedbackSubmissionsFamily._()
      : super(
          retry: null,
          name: r'feedbackSubmissionsProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Feedback

  FeedbackSubmissionsProvider call({
    int page = 1,
    String orderBy = 'date',
    String direction = 'desc',
  }) =>
      FeedbackSubmissionsProvider._(argument: (
        page: page,
        orderBy: orderBy,
        direction: direction,
      ), from: this);

  @override
  String toString() => r'feedbackSubmissionsProvider';
}

@ProviderFor(FeedbackSubmissionsList)
const feedbackSubmissionsListProvider = FeedbackSubmissionsListProvider._();

final class FeedbackSubmissionsListProvider extends $NotifierProvider<
    FeedbackSubmissionsList, fb.ResultsPagination<fb.Post>> {
  const FeedbackSubmissionsListProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'feedbackSubmissionsListProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$feedbackSubmissionsListHash();

  @$internal
  @override
  FeedbackSubmissionsList create() => FeedbackSubmissionsList();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(fb.ResultsPagination<fb.Post> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<fb.ResultsPagination<fb.Post>>(value),
    );
  }
}

String _$feedbackSubmissionsListHash() =>
    r'7b7f98506aae52ccffd8502533ee58328e842326';

abstract class _$FeedbackSubmissionsList
    extends $Notifier<fb.ResultsPagination<fb.Post>> {
  fb.ResultsPagination<fb.Post> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref
        as $Ref<fb.ResultsPagination<fb.Post>, fb.ResultsPagination<fb.Post>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<fb.ResultsPagination<fb.Post>,
            fb.ResultsPagination<fb.Post>>,
        fb.ResultsPagination<fb.Post>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

/// Comments

@ProviderFor(comments)
const commentsProvider = CommentsFamily._();

/// Comments

final class CommentsProvider extends $FunctionalProvider<
        AsyncValue<fb.ResultsPagination<fb.Comment>>,
        fb.ResultsPagination<fb.Comment>,
        FutureOr<fb.ResultsPagination<fb.Comment>>>
    with
        $FutureModifier<fb.ResultsPagination<fb.Comment>>,
        $FutureProvider<fb.ResultsPagination<fb.Comment>> {
  /// Comments
  const CommentsProvider._(
      {required CommentsFamily super.from,
      required ({
        int page,
        String sortBy,
        String? submissionId,
        String? changelogId,
        String? commentThreadId,
      })
          super.argument})
      : super(
          retry: null,
          name: r'commentsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$commentsHash();

  @override
  String toString() {
    return r'commentsProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<fb.ResultsPagination<fb.Comment>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<fb.ResultsPagination<fb.Comment>> create(Ref ref) {
    final argument = this.argument as ({
      int page,
      String sortBy,
      String? submissionId,
      String? changelogId,
      String? commentThreadId,
    });
    return comments(
      ref,
      page: argument.page,
      sortBy: argument.sortBy,
      submissionId: argument.submissionId,
      changelogId: argument.changelogId,
      commentThreadId: argument.commentThreadId,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CommentsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$commentsHash() => r'18121452bd2031d736b92f78aacfd4adcc8f8162';

/// Comments

final class CommentsFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<fb.ResultsPagination<fb.Comment>>,
            ({
              int page,
              String sortBy,
              String? submissionId,
              String? changelogId,
              String? commentThreadId,
            })> {
  const CommentsFamily._()
      : super(
          retry: null,
          name: r'commentsProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Comments

  CommentsProvider call({
    int page = 1,
    String sortBy = 'new',
    String? submissionId,
    String? changelogId,
    String? commentThreadId,
  }) =>
      CommentsProvider._(argument: (
        page: page,
        sortBy: sortBy,
        submissionId: submissionId,
        changelogId: changelogId,
        commentThreadId: commentThreadId,
      ), from: this);

  @override
  String toString() => r'commentsProvider';
}

@ProviderFor(CommentsList)
const commentsListProvider = CommentsListFamily._();

final class CommentsListProvider
    extends $NotifierProvider<CommentsList, fb.ResultsPagination<fb.Comment>> {
  const CommentsListProvider._(
      {required CommentsListFamily super.from,
      required ({
        String? submissionId,
        String? changelogId,
        String? commentThreadId,
      })
          super.argument})
      : super(
          retry: null,
          name: r'commentsListProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$commentsListHash();

  @override
  String toString() {
    return r'commentsListProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  CommentsList create() => CommentsList();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(fb.ResultsPagination<fb.Comment> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<fb.ResultsPagination<fb.Comment>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CommentsListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$commentsListHash() => r'5b0d893d0be21f78dea789a446c60c2fe20e55af';

final class CommentsListFamily extends $Family
    with
        $ClassFamilyOverride<
            CommentsList,
            fb.ResultsPagination<fb.Comment>,
            fb.ResultsPagination<fb.Comment>,
            fb.ResultsPagination<fb.Comment>,
            ({
              String? submissionId,
              String? changelogId,
              String? commentThreadId,
            })> {
  const CommentsListFamily._()
      : super(
          retry: null,
          name: r'commentsListProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  CommentsListProvider call({
    String? submissionId,
    String? changelogId,
    String? commentThreadId,
  }) =>
      CommentsListProvider._(argument: (
        submissionId: submissionId,
        changelogId: changelogId,
        commentThreadId: commentThreadId,
      ), from: this);

  @override
  String toString() => r'commentsListProvider';
}

abstract class _$CommentsList
    extends $Notifier<fb.ResultsPagination<fb.Comment>> {
  late final _$args = ref.$arg as ({
    String? submissionId,
    String? changelogId,
    String? commentThreadId,
  });
  String? get submissionId => _$args.submissionId;
  String? get changelogId => _$args.changelogId;
  String? get commentThreadId => _$args.commentThreadId;

  fb.ResultsPagination<fb.Comment> build({
    String? submissionId,
    String? changelogId,
    String? commentThreadId,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(
      submissionId: _$args.submissionId,
      changelogId: _$args.changelogId,
      commentThreadId: _$args.commentThreadId,
    );
    final ref = this.ref as $Ref<fb.ResultsPagination<fb.Comment>,
        fb.ResultsPagination<fb.Comment>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<fb.ResultsPagination<fb.Comment>,
            fb.ResultsPagination<fb.Comment>>,
        fb.ResultsPagination<fb.Comment>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

/// Changelog

@ProviderFor(changelogInfo)
const changelogInfoProvider = ChangelogInfoFamily._();

/// Changelog

final class ChangelogInfoProvider extends $FunctionalProvider<
        AsyncValue<fb.ResultsPagination<fb.Changelog>>,
        fb.ResultsPagination<fb.Changelog>,
        FutureOr<fb.ResultsPagination<fb.Changelog>>>
    with
        $FutureModifier<fb.ResultsPagination<fb.Changelog>>,
        $FutureProvider<fb.ResultsPagination<fb.Changelog>> {
  /// Changelog
  const ChangelogInfoProvider._(
      {required ChangelogInfoFamily super.from,
      required (
        String, {
        int page,
      })
          super.argument})
      : super(
          retry: null,
          name: r'changelogInfoProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$changelogInfoHash();

  @override
  String toString() {
    return r'changelogInfoProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<fb.ResultsPagination<fb.Changelog>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<fb.ResultsPagination<fb.Changelog>> create(Ref ref) {
    final argument = this.argument as (
      String, {
      int page,
    });
    return changelogInfo(
      ref,
      argument.$1,
      page: argument.page,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ChangelogInfoProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$changelogInfoHash() => r'65c61f3d98128583a5c9dee45275e3196a522e05';

/// Changelog

final class ChangelogInfoFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<fb.ResultsPagination<fb.Changelog>>,
            (
              String, {
              int page,
            })> {
  const ChangelogInfoFamily._()
      : super(
          retry: null,
          name: r'changelogInfoProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Changelog

  ChangelogInfoProvider call(
    String locale, {
    int page = 1,
  }) =>
      ChangelogInfoProvider._(argument: (
        locale,
        page: page,
      ), from: this);

  @override
  String toString() => r'changelogInfoProvider';
}

@ProviderFor(ChangelogsList)
const changelogsListProvider = ChangelogsListFamily._();

final class ChangelogsListProvider extends $NotifierProvider<ChangelogsList,
    fb.ResultsPagination<fb.Changelog>> {
  const ChangelogsListProvider._(
      {required ChangelogsListFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'changelogsListProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$changelogsListHash();

  @override
  String toString() {
    return r'changelogsListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ChangelogsList create() => ChangelogsList();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(fb.ResultsPagination<fb.Changelog> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<fb.ResultsPagination<fb.Changelog>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ChangelogsListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$changelogsListHash() => r'10751b454fd5236059a19f1da8283ac831b377e5';

final class ChangelogsListFamily extends $Family
    with
        $ClassFamilyOverride<
            ChangelogsList,
            fb.ResultsPagination<fb.Changelog>,
            fb.ResultsPagination<fb.Changelog>,
            fb.ResultsPagination<fb.Changelog>,
            String> {
  const ChangelogsListFamily._()
      : super(
          retry: null,
          name: r'changelogsListProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  ChangelogsListProvider call(
    String locale,
  ) =>
      ChangelogsListProvider._(argument: locale, from: this);

  @override
  String toString() => r'changelogsListProvider';
}

abstract class _$ChangelogsList
    extends $Notifier<fb.ResultsPagination<fb.Changelog>> {
  late final _$args = ref.$arg as String;
  String get locale => _$args;

  fb.ResultsPagination<fb.Changelog> build(
    String locale,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(
      _$args,
    );
    final ref = this.ref as $Ref<fb.ResultsPagination<fb.Changelog>,
        fb.ResultsPagination<fb.Changelog>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<fb.ResultsPagination<fb.Changelog>,
            fb.ResultsPagination<fb.Changelog>>,
        fb.ResultsPagination<fb.Changelog>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

/// User

@ProviderFor(getCurrentUser)
const getCurrentUserProvider = GetCurrentUserProvider._();

/// User

final class GetCurrentUserProvider
    extends $FunctionalProvider<AsyncValue<fb.User>, fb.User, FutureOr<fb.User>>
    with $FutureModifier<fb.User>, $FutureProvider<fb.User> {
  /// User
  const GetCurrentUserProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getCurrentUserProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getCurrentUserHash();

  @$internal
  @override
  $FutureProviderElement<fb.User> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<fb.User> create(Ref ref) {
    return getCurrentUser(ref);
  }
}

String _$getCurrentUserHash() => r'495d0500a191ee002228987b62f7987bcf4cb888';
