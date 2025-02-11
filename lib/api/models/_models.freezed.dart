// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
mixin _$Article {
  /// The article's unique ID.
  ///
  /// TODO: Check why sometimes articleId can be null
  @JsonKey(name: 'articleId', defaultValue: '')
  String get articleId => throw _privateConstructorUsedError;

  /// The title of the article.
  ///
  /// TODO: Check why sometimes title can be null
  @JsonKey(name: 'title', defaultValue: '')
  String get title => throw _privateConstructorUsedError;

  /// A brief description of the article.
  @JsonKey(name: 'description', required: true)
  String get description => throw _privateConstructorUsedError;

  /// The HTML content of the article.
  ///
  /// Not returned when using withStructure
  String? get body => throw _privateConstructorUsedError;

  /// The icon of the article.
  @JsonKey(name: 'icon')
  FBIcon? get icon => throw _privateConstructorUsedError;

  /// The ID of the parent collection, if any.
  String? get parentId => throw _privateConstructorUsedError;

  /// The ID of the help center this article belongs to.
  @JsonKey(name: 'helpCenterId', required: true)
  String get helpCenterId => throw _privateConstructorUsedError;

  /// The ID of the organization that the article belongs to.
  @JsonKey(name: 'organizationId', required: true)
  String get organizationId => throw _privateConstructorUsedError;

  /// The state of the article, either "live" or "draft".
  @JsonKey(name: 'state', defaultValue: 'live')
  String get state => throw _privateConstructorUsedError;

  /// The locale of the article.
  @JsonKey(name: 'locale', required: true)
  String get locale =>
      throw _privateConstructorUsedError; //TODO: add translations
  /// The date when the article was created (will be null if hideDateInfo is true)
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// The date when the article was last updated (will be null if hideDateInfo is true)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// The URL-friendly slug of the article.
  @JsonKey(name: 'slug', required: true)
  String get slug => throw _privateConstructorUsedError;

  /// The Featurebase URL for the article.
  @JsonKey(name: 'featurebaseUrl', required: true)
  String get featurebaseUrl => throw _privateConstructorUsedError;

  /// The external URL for the article.
  String? get externalUrl => throw _privateConstructorUsedError;

  /// Indicates whether the draft version differs from the live published version.
  @JsonKey(name: 'isDraftDiffersFromLive', defaultValue: false)
  bool get isDraftDiffersFromLive => throw _privateConstructorUsedError;

  /// Indicates whether the article is published.
  @JsonKey(name: 'isPublished', defaultValue: true)
  bool get isPublished => throw _privateConstructorUsedError;

  /// Author of the article (will be null if hideAuthorInfo is true)
  @JsonKey(name: 'author')
  Author? get author => throw _privateConstructorUsedError;

  /// An array of available locales for the article.
  @JsonKey(name: 'availableLocales', required: true)
  List<String> get availableLocales => throw _privateConstructorUsedError;

  /// An array of locales in which the article is published.
  @JsonKey(name: 'publishedLocales', required: true)
  List<String> get publishedLocales => throw _privateConstructorUsedError;

  /// Serializes this Article to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call(
      {@JsonKey(name: 'articleId', defaultValue: '') String articleId,
      @JsonKey(name: 'title', defaultValue: '') String title,
      @JsonKey(name: 'description', required: true) String description,
      String? body,
      @JsonKey(name: 'icon') FBIcon? icon,
      String? parentId,
      @JsonKey(name: 'helpCenterId', required: true) String helpCenterId,
      @JsonKey(name: 'organizationId', required: true) String organizationId,
      @JsonKey(name: 'state', defaultValue: 'live') String state,
      @JsonKey(name: 'locale', required: true) String locale,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: 'slug', required: true) String slug,
      @JsonKey(name: 'featurebaseUrl', required: true) String featurebaseUrl,
      String? externalUrl,
      @JsonKey(name: 'isDraftDiffersFromLive', defaultValue: false)
      bool isDraftDiffersFromLive,
      @JsonKey(name: 'isPublished', defaultValue: true) bool isPublished,
      @JsonKey(name: 'author') Author? author,
      @JsonKey(name: 'availableLocales', required: true)
      List<String> availableLocales,
      @JsonKey(name: 'publishedLocales', required: true)
      List<String> publishedLocales});

  $FBIconCopyWith<$Res>? get icon;
  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleId = null,
    Object? title = null,
    Object? description = null,
    Object? body = freezed,
    Object? icon = freezed,
    Object? parentId = freezed,
    Object? helpCenterId = null,
    Object? organizationId = null,
    Object? state = null,
    Object? locale = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? slug = null,
    Object? featurebaseUrl = null,
    Object? externalUrl = freezed,
    Object? isDraftDiffersFromLive = null,
    Object? isPublished = null,
    Object? author = freezed,
    Object? availableLocales = null,
    Object? publishedLocales = null,
  }) {
    return _then(_value.copyWith(
      articleId: null == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as FBIcon?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      helpCenterId: null == helpCenterId
          ? _value.helpCenterId
          : helpCenterId // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      featurebaseUrl: null == featurebaseUrl
          ? _value.featurebaseUrl
          : featurebaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isDraftDiffersFromLive: null == isDraftDiffersFromLive
          ? _value.isDraftDiffersFromLive
          : isDraftDiffersFromLive // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
      availableLocales: null == availableLocales
          ? _value.availableLocales
          : availableLocales // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publishedLocales: null == publishedLocales
          ? _value.publishedLocales
          : publishedLocales // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FBIconCopyWith<$Res>? get icon {
    if (_value.icon == null) {
      return null;
    }

    return $FBIconCopyWith<$Res>(_value.icon!, (value) {
      return _then(_value.copyWith(icon: value) as $Val);
    });
  }

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $AuthorCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArticleImplCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$ArticleImplCopyWith(
          _$ArticleImpl value, $Res Function(_$ArticleImpl) then) =
      __$$ArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'articleId', defaultValue: '') String articleId,
      @JsonKey(name: 'title', defaultValue: '') String title,
      @JsonKey(name: 'description', required: true) String description,
      String? body,
      @JsonKey(name: 'icon') FBIcon? icon,
      String? parentId,
      @JsonKey(name: 'helpCenterId', required: true) String helpCenterId,
      @JsonKey(name: 'organizationId', required: true) String organizationId,
      @JsonKey(name: 'state', defaultValue: 'live') String state,
      @JsonKey(name: 'locale', required: true) String locale,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: 'slug', required: true) String slug,
      @JsonKey(name: 'featurebaseUrl', required: true) String featurebaseUrl,
      String? externalUrl,
      @JsonKey(name: 'isDraftDiffersFromLive', defaultValue: false)
      bool isDraftDiffersFromLive,
      @JsonKey(name: 'isPublished', defaultValue: true) bool isPublished,
      @JsonKey(name: 'author') Author? author,
      @JsonKey(name: 'availableLocales', required: true)
      List<String> availableLocales,
      @JsonKey(name: 'publishedLocales', required: true)
      List<String> publishedLocales});

  @override
  $FBIconCopyWith<$Res>? get icon;
  @override
  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class __$$ArticleImplCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$ArticleImpl>
    implements _$$ArticleImplCopyWith<$Res> {
  __$$ArticleImplCopyWithImpl(
      _$ArticleImpl _value, $Res Function(_$ArticleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleId = null,
    Object? title = null,
    Object? description = null,
    Object? body = freezed,
    Object? icon = freezed,
    Object? parentId = freezed,
    Object? helpCenterId = null,
    Object? organizationId = null,
    Object? state = null,
    Object? locale = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? slug = null,
    Object? featurebaseUrl = null,
    Object? externalUrl = freezed,
    Object? isDraftDiffersFromLive = null,
    Object? isPublished = null,
    Object? author = freezed,
    Object? availableLocales = null,
    Object? publishedLocales = null,
  }) {
    return _then(_$ArticleImpl(
      articleId: null == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as FBIcon?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      helpCenterId: null == helpCenterId
          ? _value.helpCenterId
          : helpCenterId // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      featurebaseUrl: null == featurebaseUrl
          ? _value.featurebaseUrl
          : featurebaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isDraftDiffersFromLive: null == isDraftDiffersFromLive
          ? _value.isDraftDiffersFromLive
          : isDraftDiffersFromLive // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
      availableLocales: null == availableLocales
          ? _value._availableLocales
          : availableLocales // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publishedLocales: null == publishedLocales
          ? _value._publishedLocales
          : publishedLocales // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleImpl implements _Article {
  const _$ArticleImpl(
      {@JsonKey(name: 'articleId', defaultValue: '') required this.articleId,
      @JsonKey(name: 'title', defaultValue: '') required this.title,
      @JsonKey(name: 'description', required: true) required this.description,
      this.body,
      @JsonKey(name: 'icon') required this.icon,
      this.parentId,
      @JsonKey(name: 'helpCenterId', required: true) required this.helpCenterId,
      @JsonKey(name: 'organizationId', required: true)
      required this.organizationId,
      @JsonKey(name: 'state', defaultValue: 'live') required this.state,
      @JsonKey(name: 'locale', required: true) required this.locale,
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: 'slug', required: true) required this.slug,
      @JsonKey(name: 'featurebaseUrl', required: true)
      required this.featurebaseUrl,
      this.externalUrl,
      @JsonKey(name: 'isDraftDiffersFromLive', defaultValue: false)
      required this.isDraftDiffersFromLive,
      @JsonKey(name: 'isPublished', defaultValue: true)
      required this.isPublished,
      @JsonKey(name: 'author') this.author,
      @JsonKey(name: 'availableLocales', required: true)
      required final List<String> availableLocales,
      @JsonKey(name: 'publishedLocales', required: true)
      required final List<String> publishedLocales})
      : _availableLocales = availableLocales,
        _publishedLocales = publishedLocales;

  factory _$ArticleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleImplFromJson(json);

  /// The article's unique ID.
  ///
  /// TODO: Check why sometimes articleId can be null
  @override
  @JsonKey(name: 'articleId', defaultValue: '')
  final String articleId;

  /// The title of the article.
  ///
  /// TODO: Check why sometimes title can be null
  @override
  @JsonKey(name: 'title', defaultValue: '')
  final String title;

  /// A brief description of the article.
  @override
  @JsonKey(name: 'description', required: true)
  final String description;

  /// The HTML content of the article.
  ///
  /// Not returned when using withStructure
  @override
  final String? body;

  /// The icon of the article.
  @override
  @JsonKey(name: 'icon')
  final FBIcon? icon;

  /// The ID of the parent collection, if any.
  @override
  final String? parentId;

  /// The ID of the help center this article belongs to.
  @override
  @JsonKey(name: 'helpCenterId', required: true)
  final String helpCenterId;

  /// The ID of the organization that the article belongs to.
  @override
  @JsonKey(name: 'organizationId', required: true)
  final String organizationId;

  /// The state of the article, either "live" or "draft".
  @override
  @JsonKey(name: 'state', defaultValue: 'live')
  final String state;

  /// The locale of the article.
  @override
  @JsonKey(name: 'locale', required: true)
  final String locale;
//TODO: add translations
  /// The date when the article was created (will be null if hideDateInfo is true)
  @override
  final DateTime? createdAt;

  /// The date when the article was last updated (will be null if hideDateInfo is true)
  @override
  final DateTime? updatedAt;

  /// The URL-friendly slug of the article.
  @override
  @JsonKey(name: 'slug', required: true)
  final String slug;

  /// The Featurebase URL for the article.
  @override
  @JsonKey(name: 'featurebaseUrl', required: true)
  final String featurebaseUrl;

  /// The external URL for the article.
  @override
  final String? externalUrl;

  /// Indicates whether the draft version differs from the live published version.
  @override
  @JsonKey(name: 'isDraftDiffersFromLive', defaultValue: false)
  final bool isDraftDiffersFromLive;

  /// Indicates whether the article is published.
  @override
  @JsonKey(name: 'isPublished', defaultValue: true)
  final bool isPublished;

  /// Author of the article (will be null if hideAuthorInfo is true)
  @override
  @JsonKey(name: 'author')
  final Author? author;

  /// An array of available locales for the article.
  final List<String> _availableLocales;

  /// An array of available locales for the article.
  @override
  @JsonKey(name: 'availableLocales', required: true)
  List<String> get availableLocales {
    if (_availableLocales is EqualUnmodifiableListView)
      return _availableLocales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableLocales);
  }

  /// An array of locales in which the article is published.
  final List<String> _publishedLocales;

  /// An array of locales in which the article is published.
  @override
  @JsonKey(name: 'publishedLocales', required: true)
  List<String> get publishedLocales {
    if (_publishedLocales is EqualUnmodifiableListView)
      return _publishedLocales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_publishedLocales);
  }

  @override
  String toString() {
    return 'Article(articleId: $articleId, title: $title, description: $description, body: $body, icon: $icon, parentId: $parentId, helpCenterId: $helpCenterId, organizationId: $organizationId, state: $state, locale: $locale, createdAt: $createdAt, updatedAt: $updatedAt, slug: $slug, featurebaseUrl: $featurebaseUrl, externalUrl: $externalUrl, isDraftDiffersFromLive: $isDraftDiffersFromLive, isPublished: $isPublished, author: $author, availableLocales: $availableLocales, publishedLocales: $publishedLocales)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleImpl &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.helpCenterId, helpCenterId) ||
                other.helpCenterId == helpCenterId) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.featurebaseUrl, featurebaseUrl) ||
                other.featurebaseUrl == featurebaseUrl) &&
            (identical(other.externalUrl, externalUrl) ||
                other.externalUrl == externalUrl) &&
            (identical(other.isDraftDiffersFromLive, isDraftDiffersFromLive) ||
                other.isDraftDiffersFromLive == isDraftDiffersFromLive) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality()
                .equals(other._availableLocales, _availableLocales) &&
            const DeepCollectionEquality()
                .equals(other._publishedLocales, _publishedLocales));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        articleId,
        title,
        description,
        body,
        icon,
        parentId,
        helpCenterId,
        organizationId,
        state,
        locale,
        createdAt,
        updatedAt,
        slug,
        featurebaseUrl,
        externalUrl,
        isDraftDiffersFromLive,
        isPublished,
        author,
        const DeepCollectionEquality().hash(_availableLocales),
        const DeepCollectionEquality().hash(_publishedLocales)
      ]);

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      __$$ArticleImplCopyWithImpl<_$ArticleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleImplToJson(
      this,
    );
  }
}

abstract class _Article implements Article {
  const factory _Article(
      {@JsonKey(name: 'articleId', defaultValue: '')
      required final String articleId,
      @JsonKey(name: 'title', defaultValue: '') required final String title,
      @JsonKey(name: 'description', required: true)
      required final String description,
      final String? body,
      @JsonKey(name: 'icon') required final FBIcon? icon,
      final String? parentId,
      @JsonKey(name: 'helpCenterId', required: true)
      required final String helpCenterId,
      @JsonKey(name: 'organizationId', required: true)
      required final String organizationId,
      @JsonKey(name: 'state', defaultValue: 'live') required final String state,
      @JsonKey(name: 'locale', required: true) required final String locale,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      @JsonKey(name: 'slug', required: true) required final String slug,
      @JsonKey(name: 'featurebaseUrl', required: true)
      required final String featurebaseUrl,
      final String? externalUrl,
      @JsonKey(name: 'isDraftDiffersFromLive', defaultValue: false)
      required final bool isDraftDiffersFromLive,
      @JsonKey(name: 'isPublished', defaultValue: true)
      required final bool isPublished,
      @JsonKey(name: 'author') final Author? author,
      @JsonKey(name: 'availableLocales', required: true)
      required final List<String> availableLocales,
      @JsonKey(name: 'publishedLocales', required: true)
      required final List<String> publishedLocales}) = _$ArticleImpl;

  factory _Article.fromJson(Map<String, dynamic> json) = _$ArticleImpl.fromJson;

  /// The article's unique ID.
  ///
  /// TODO: Check why sometimes articleId can be null
  @override
  @JsonKey(name: 'articleId', defaultValue: '')
  String get articleId;

  /// The title of the article.
  ///
  /// TODO: Check why sometimes title can be null
  @override
  @JsonKey(name: 'title', defaultValue: '')
  String get title;

  /// A brief description of the article.
  @override
  @JsonKey(name: 'description', required: true)
  String get description;

  /// The HTML content of the article.
  ///
  /// Not returned when using withStructure
  @override
  String? get body;

  /// The icon of the article.
  @override
  @JsonKey(name: 'icon')
  FBIcon? get icon;

  /// The ID of the parent collection, if any.
  @override
  String? get parentId;

  /// The ID of the help center this article belongs to.
  @override
  @JsonKey(name: 'helpCenterId', required: true)
  String get helpCenterId;

  /// The ID of the organization that the article belongs to.
  @override
  @JsonKey(name: 'organizationId', required: true)
  String get organizationId;

  /// The state of the article, either "live" or "draft".
  @override
  @JsonKey(name: 'state', defaultValue: 'live')
  String get state;

  /// The locale of the article.
  @override
  @JsonKey(name: 'locale', required: true)
  String get locale; //TODO: add translations
  /// The date when the article was created (will be null if hideDateInfo is true)
  @override
  DateTime? get createdAt;

  /// The date when the article was last updated (will be null if hideDateInfo is true)
  @override
  DateTime? get updatedAt;

  /// The URL-friendly slug of the article.
  @override
  @JsonKey(name: 'slug', required: true)
  String get slug;

  /// The Featurebase URL for the article.
  @override
  @JsonKey(name: 'featurebaseUrl', required: true)
  String get featurebaseUrl;

  /// The external URL for the article.
  @override
  String? get externalUrl;

  /// Indicates whether the draft version differs from the live published version.
  @override
  @JsonKey(name: 'isDraftDiffersFromLive', defaultValue: false)
  bool get isDraftDiffersFromLive;

  /// Indicates whether the article is published.
  @override
  @JsonKey(name: 'isPublished', defaultValue: true)
  bool get isPublished;

  /// Author of the article (will be null if hideAuthorInfo is true)
  @override
  @JsonKey(name: 'author')
  Author? get author;

  /// An array of available locales for the article.
  @override
  @JsonKey(name: 'availableLocales', required: true)
  List<String> get availableLocales;

  /// An array of locales in which the article is published.
  @override
  @JsonKey(name: 'publishedLocales', required: true)
  List<String> get publishedLocales;

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
mixin _$Author {
  /// Name of the author
  @JsonKey(name: 'name', required: true)
  String get name => throw _privateConstructorUsedError;

  /// Avatar URL of the author
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Id of the author
  @JsonKey(name: 'authorId', required: true)
  String get authorId => throw _privateConstructorUsedError;

  /// Serializes this Author to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res, Author>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name', required: true) String name,
      @JsonKey(name: 'avatarUrl') String? avatarUrl,
      @JsonKey(name: 'authorId', required: true) String authorId});
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res, $Val extends Author>
    implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarUrl = freezed,
    Object? authorId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthorImplCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$AuthorImplCopyWith(
          _$AuthorImpl value, $Res Function(_$AuthorImpl) then) =
      __$$AuthorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name', required: true) String name,
      @JsonKey(name: 'avatarUrl') String? avatarUrl,
      @JsonKey(name: 'authorId', required: true) String authorId});
}

/// @nodoc
class __$$AuthorImplCopyWithImpl<$Res>
    extends _$AuthorCopyWithImpl<$Res, _$AuthorImpl>
    implements _$$AuthorImplCopyWith<$Res> {
  __$$AuthorImplCopyWithImpl(
      _$AuthorImpl _value, $Res Function(_$AuthorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarUrl = freezed,
    Object? authorId = null,
  }) {
    return _then(_$AuthorImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorImpl implements _Author {
  const _$AuthorImpl(
      {@JsonKey(name: 'name', required: true) required this.name,
      @JsonKey(name: 'avatarUrl') this.avatarUrl,
      @JsonKey(name: 'authorId', required: true) required this.authorId});

  factory _$AuthorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorImplFromJson(json);

  /// Name of the author
  @override
  @JsonKey(name: 'name', required: true)
  final String name;

  /// Avatar URL of the author
  @override
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;

  /// Id of the author
  @override
  @JsonKey(name: 'authorId', required: true)
  final String authorId;

  @override
  String toString() {
    return 'Author(name: $name, avatarUrl: $avatarUrl, authorId: $authorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, avatarUrl, authorId);

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      __$$AuthorImplCopyWithImpl<_$AuthorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorImplToJson(
      this,
    );
  }
}

abstract class _Author implements Author {
  const factory _Author(
      {@JsonKey(name: 'name', required: true) required final String name,
      @JsonKey(name: 'avatarUrl') final String? avatarUrl,
      @JsonKey(name: 'authorId', required: true)
      required final String authorId}) = _$AuthorImpl;

  factory _Author.fromJson(Map<String, dynamic> json) = _$AuthorImpl.fromJson;

  /// Name of the author
  @override
  @JsonKey(name: 'name', required: true)
  String get name;

  /// Avatar URL of the author
  @override
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl;

  /// Id of the author
  @override
  @JsonKey(name: 'authorId', required: true)
  String get authorId;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Changelog _$ChangelogFromJson(Map<String, dynamic> json) {
  return _Changelog.fromJson(json);
}

/// @nodoc
mixin _$Changelog {
  /// The unique ID.
  @JsonKey(name: 'id', required: true)
  String get id => throw _privateConstructorUsedError;

  /// The title of the changelog.
  @JsonKey(name: 'title', required: true)
  String get title => throw _privateConstructorUsedError;

  /// The content of the changelog.
  ///
  /// In HTML format.
  @JsonKey(name: 'content', required: true)
  String get content => throw _privateConstructorUsedError;

  /// The featured image of the changelog.
  @JsonKey(name: 'featuredImage')
  String? get featuredImage => throw _privateConstructorUsedError;

  /// The ID of the organization that the changelog belongs to.
  @JsonKey(name: 'organization', required: true)
  String get organization => throw _privateConstructorUsedError;

  /// The state of the changelog, either "live" or "draft".
  @JsonKey(name: 'state', defaultValue: 'live')
  String get state => throw _privateConstructorUsedError;

  /// The locale of the changelog.
  @JsonKey(name: 'locale', required: true)
  String get locale => throw _privateConstructorUsedError;

  /// The categories of the changelog.
  @JsonKey(name: 'changelogCategories', required: true)
  List<ChangelogCategory> get changelogCategories =>
      throw _privateConstructorUsedError;

  /// The date when the Changelog was created.
  DateTime get date => throw _privateConstructorUsedError;

  /// The URL-friendly slug of the changelog.
  @JsonKey(name: 'slug', required: true)
  String get slug => throw _privateConstructorUsedError;

  /// Indicates whether the draft version differs from the live published version.
  @JsonKey(name: 'isDraftDiffersFromLive', defaultValue: false)
  bool get isDraftDiffersFromLive => throw _privateConstructorUsedError;

  /// Indicates whether the changelog is published.
  @JsonKey(name: 'isPublished', defaultValue: true)
  bool get isPublished => throw _privateConstructorUsedError;

  /// An array of available locales for the changelog.
  @JsonKey(name: 'availableLocales', required: true)
  List<String> get availableLocales => throw _privateConstructorUsedError;

  /// An array of locales in which the changelog is published.
  @JsonKey(name: 'publishedLocales', required: true)
  List<String> get publishedLocales => throw _privateConstructorUsedError;

  /// Serializes this Changelog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Changelog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangelogCopyWith<Changelog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangelogCopyWith<$Res> {
  factory $ChangelogCopyWith(Changelog value, $Res Function(Changelog) then) =
      _$ChangelogCopyWithImpl<$Res, Changelog>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true) String id,
      @JsonKey(name: 'title', required: true) String title,
      @JsonKey(name: 'content', required: true) String content,
      @JsonKey(name: 'featuredImage') String? featuredImage,
      @JsonKey(name: 'organization', required: true) String organization,
      @JsonKey(name: 'state', defaultValue: 'live') String state,
      @JsonKey(name: 'locale', required: true) String locale,
      @JsonKey(name: 'changelogCategories', required: true)
      List<ChangelogCategory> changelogCategories,
      DateTime date,
      @JsonKey(name: 'slug', required: true) String slug,
      @JsonKey(name: 'isDraftDiffersFromLive', defaultValue: false)
      bool isDraftDiffersFromLive,
      @JsonKey(name: 'isPublished', defaultValue: true) bool isPublished,
      @JsonKey(name: 'availableLocales', required: true)
      List<String> availableLocales,
      @JsonKey(name: 'publishedLocales', required: true)
      List<String> publishedLocales});
}

/// @nodoc
class _$ChangelogCopyWithImpl<$Res, $Val extends Changelog>
    implements $ChangelogCopyWith<$Res> {
  _$ChangelogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Changelog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? featuredImage = freezed,
    Object? organization = null,
    Object? state = null,
    Object? locale = null,
    Object? changelogCategories = null,
    Object? date = null,
    Object? slug = null,
    Object? isDraftDiffersFromLive = null,
    Object? isPublished = null,
    Object? availableLocales = null,
    Object? publishedLocales = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      featuredImage: freezed == featuredImage
          ? _value.featuredImage
          : featuredImage // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      changelogCategories: null == changelogCategories
          ? _value.changelogCategories
          : changelogCategories // ignore: cast_nullable_to_non_nullable
              as List<ChangelogCategory>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      isDraftDiffersFromLive: null == isDraftDiffersFromLive
          ? _value.isDraftDiffersFromLive
          : isDraftDiffersFromLive // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      availableLocales: null == availableLocales
          ? _value.availableLocales
          : availableLocales // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publishedLocales: null == publishedLocales
          ? _value.publishedLocales
          : publishedLocales // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangelogImplCopyWith<$Res>
    implements $ChangelogCopyWith<$Res> {
  factory _$$ChangelogImplCopyWith(
          _$ChangelogImpl value, $Res Function(_$ChangelogImpl) then) =
      __$$ChangelogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true) String id,
      @JsonKey(name: 'title', required: true) String title,
      @JsonKey(name: 'content', required: true) String content,
      @JsonKey(name: 'featuredImage') String? featuredImage,
      @JsonKey(name: 'organization', required: true) String organization,
      @JsonKey(name: 'state', defaultValue: 'live') String state,
      @JsonKey(name: 'locale', required: true) String locale,
      @JsonKey(name: 'changelogCategories', required: true)
      List<ChangelogCategory> changelogCategories,
      DateTime date,
      @JsonKey(name: 'slug', required: true) String slug,
      @JsonKey(name: 'isDraftDiffersFromLive', defaultValue: false)
      bool isDraftDiffersFromLive,
      @JsonKey(name: 'isPublished', defaultValue: true) bool isPublished,
      @JsonKey(name: 'availableLocales', required: true)
      List<String> availableLocales,
      @JsonKey(name: 'publishedLocales', required: true)
      List<String> publishedLocales});
}

/// @nodoc
class __$$ChangelogImplCopyWithImpl<$Res>
    extends _$ChangelogCopyWithImpl<$Res, _$ChangelogImpl>
    implements _$$ChangelogImplCopyWith<$Res> {
  __$$ChangelogImplCopyWithImpl(
      _$ChangelogImpl _value, $Res Function(_$ChangelogImpl) _then)
      : super(_value, _then);

  /// Create a copy of Changelog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? featuredImage = freezed,
    Object? organization = null,
    Object? state = null,
    Object? locale = null,
    Object? changelogCategories = null,
    Object? date = null,
    Object? slug = null,
    Object? isDraftDiffersFromLive = null,
    Object? isPublished = null,
    Object? availableLocales = null,
    Object? publishedLocales = null,
  }) {
    return _then(_$ChangelogImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      featuredImage: freezed == featuredImage
          ? _value.featuredImage
          : featuredImage // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      changelogCategories: null == changelogCategories
          ? _value._changelogCategories
          : changelogCategories // ignore: cast_nullable_to_non_nullable
              as List<ChangelogCategory>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      isDraftDiffersFromLive: null == isDraftDiffersFromLive
          ? _value.isDraftDiffersFromLive
          : isDraftDiffersFromLive // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      availableLocales: null == availableLocales
          ? _value._availableLocales
          : availableLocales // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publishedLocales: null == publishedLocales
          ? _value._publishedLocales
          : publishedLocales // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangelogImpl implements _Changelog {
  const _$ChangelogImpl(
      {@JsonKey(name: 'id', required: true) required this.id,
      @JsonKey(name: 'title', required: true) required this.title,
      @JsonKey(name: 'content', required: true) required this.content,
      @JsonKey(name: 'featuredImage') this.featuredImage,
      @JsonKey(name: 'organization', required: true) required this.organization,
      @JsonKey(name: 'state', defaultValue: 'live') required this.state,
      @JsonKey(name: 'locale', required: true) required this.locale,
      @JsonKey(name: 'changelogCategories', required: true)
      required final List<ChangelogCategory> changelogCategories,
      required this.date,
      @JsonKey(name: 'slug', required: true) required this.slug,
      @JsonKey(name: 'isDraftDiffersFromLive', defaultValue: false)
      required this.isDraftDiffersFromLive,
      @JsonKey(name: 'isPublished', defaultValue: true)
      required this.isPublished,
      @JsonKey(name: 'availableLocales', required: true)
      required final List<String> availableLocales,
      @JsonKey(name: 'publishedLocales', required: true)
      required final List<String> publishedLocales})
      : _changelogCategories = changelogCategories,
        _availableLocales = availableLocales,
        _publishedLocales = publishedLocales;

  factory _$ChangelogImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangelogImplFromJson(json);

  /// The unique ID.
  @override
  @JsonKey(name: 'id', required: true)
  final String id;

  /// The title of the changelog.
  @override
  @JsonKey(name: 'title', required: true)
  final String title;

  /// The content of the changelog.
  ///
  /// In HTML format.
  @override
  @JsonKey(name: 'content', required: true)
  final String content;

  /// The featured image of the changelog.
  @override
  @JsonKey(name: 'featuredImage')
  final String? featuredImage;

  /// The ID of the organization that the changelog belongs to.
  @override
  @JsonKey(name: 'organization', required: true)
  final String organization;

  /// The state of the changelog, either "live" or "draft".
  @override
  @JsonKey(name: 'state', defaultValue: 'live')
  final String state;

  /// The locale of the changelog.
  @override
  @JsonKey(name: 'locale', required: true)
  final String locale;

  /// The categories of the changelog.
  final List<ChangelogCategory> _changelogCategories;

  /// The categories of the changelog.
  @override
  @JsonKey(name: 'changelogCategories', required: true)
  List<ChangelogCategory> get changelogCategories {
    if (_changelogCategories is EqualUnmodifiableListView)
      return _changelogCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_changelogCategories);
  }

  /// The date when the Changelog was created.
  @override
  final DateTime date;

  /// The URL-friendly slug of the changelog.
  @override
  @JsonKey(name: 'slug', required: true)
  final String slug;

  /// Indicates whether the draft version differs from the live published version.
  @override
  @JsonKey(name: 'isDraftDiffersFromLive', defaultValue: false)
  final bool isDraftDiffersFromLive;

  /// Indicates whether the changelog is published.
  @override
  @JsonKey(name: 'isPublished', defaultValue: true)
  final bool isPublished;

  /// An array of available locales for the changelog.
  final List<String> _availableLocales;

  /// An array of available locales for the changelog.
  @override
  @JsonKey(name: 'availableLocales', required: true)
  List<String> get availableLocales {
    if (_availableLocales is EqualUnmodifiableListView)
      return _availableLocales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableLocales);
  }

  /// An array of locales in which the changelog is published.
  final List<String> _publishedLocales;

  /// An array of locales in which the changelog is published.
  @override
  @JsonKey(name: 'publishedLocales', required: true)
  List<String> get publishedLocales {
    if (_publishedLocales is EqualUnmodifiableListView)
      return _publishedLocales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_publishedLocales);
  }

  @override
  String toString() {
    return 'Changelog(id: $id, title: $title, content: $content, featuredImage: $featuredImage, organization: $organization, state: $state, locale: $locale, changelogCategories: $changelogCategories, date: $date, slug: $slug, isDraftDiffersFromLive: $isDraftDiffersFromLive, isPublished: $isPublished, availableLocales: $availableLocales, publishedLocales: $publishedLocales)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangelogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.featuredImage, featuredImage) ||
                other.featuredImage == featuredImage) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            const DeepCollectionEquality()
                .equals(other._changelogCategories, _changelogCategories) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.isDraftDiffersFromLive, isDraftDiffersFromLive) ||
                other.isDraftDiffersFromLive == isDraftDiffersFromLive) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            const DeepCollectionEquality()
                .equals(other._availableLocales, _availableLocales) &&
            const DeepCollectionEquality()
                .equals(other._publishedLocales, _publishedLocales));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      content,
      featuredImage,
      organization,
      state,
      locale,
      const DeepCollectionEquality().hash(_changelogCategories),
      date,
      slug,
      isDraftDiffersFromLive,
      isPublished,
      const DeepCollectionEquality().hash(_availableLocales),
      const DeepCollectionEquality().hash(_publishedLocales));

  /// Create a copy of Changelog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangelogImplCopyWith<_$ChangelogImpl> get copyWith =>
      __$$ChangelogImplCopyWithImpl<_$ChangelogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangelogImplToJson(
      this,
    );
  }
}

abstract class _Changelog implements Changelog {
  const factory _Changelog(
      {@JsonKey(name: 'id', required: true) required final String id,
      @JsonKey(name: 'title', required: true) required final String title,
      @JsonKey(name: 'content', required: true) required final String content,
      @JsonKey(name: 'featuredImage') final String? featuredImage,
      @JsonKey(name: 'organization', required: true)
      required final String organization,
      @JsonKey(name: 'state', defaultValue: 'live') required final String state,
      @JsonKey(name: 'locale', required: true) required final String locale,
      @JsonKey(name: 'changelogCategories', required: true)
      required final List<ChangelogCategory> changelogCategories,
      required final DateTime date,
      @JsonKey(name: 'slug', required: true) required final String slug,
      @JsonKey(name: 'isDraftDiffersFromLive', defaultValue: false)
      required final bool isDraftDiffersFromLive,
      @JsonKey(name: 'isPublished', defaultValue: true)
      required final bool isPublished,
      @JsonKey(name: 'availableLocales', required: true)
      required final List<String> availableLocales,
      @JsonKey(name: 'publishedLocales', required: true)
      required final List<String> publishedLocales}) = _$ChangelogImpl;

  factory _Changelog.fromJson(Map<String, dynamic> json) =
      _$ChangelogImpl.fromJson;

  /// The unique ID.
  @override
  @JsonKey(name: 'id', required: true)
  String get id;

  /// The title of the changelog.
  @override
  @JsonKey(name: 'title', required: true)
  String get title;

  /// The content of the changelog.
  ///
  /// In HTML format.
  @override
  @JsonKey(name: 'content', required: true)
  String get content;

  /// The featured image of the changelog.
  @override
  @JsonKey(name: 'featuredImage')
  String? get featuredImage;

  /// The ID of the organization that the changelog belongs to.
  @override
  @JsonKey(name: 'organization', required: true)
  String get organization;

  /// The state of the changelog, either "live" or "draft".
  @override
  @JsonKey(name: 'state', defaultValue: 'live')
  String get state;

  /// The locale of the changelog.
  @override
  @JsonKey(name: 'locale', required: true)
  String get locale;

  /// The categories of the changelog.
  @override
  @JsonKey(name: 'changelogCategories', required: true)
  List<ChangelogCategory> get changelogCategories;

  /// The date when the Changelog was created.
  @override
  DateTime get date;

  /// The URL-friendly slug of the changelog.
  @override
  @JsonKey(name: 'slug', required: true)
  String get slug;

  /// Indicates whether the draft version differs from the live published version.
  @override
  @JsonKey(name: 'isDraftDiffersFromLive', defaultValue: false)
  bool get isDraftDiffersFromLive;

  /// Indicates whether the changelog is published.
  @override
  @JsonKey(name: 'isPublished', defaultValue: true)
  bool get isPublished;

  /// An array of available locales for the changelog.
  @override
  @JsonKey(name: 'availableLocales', required: true)
  List<String> get availableLocales;

  /// An array of locales in which the changelog is published.
  @override
  @JsonKey(name: 'publishedLocales', required: true)
  List<String> get publishedLocales;

  /// Create a copy of Changelog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangelogImplCopyWith<_$ChangelogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChangelogCategory _$ChangelogCategoryFromJson(Map<String, dynamic> json) {
  return _ChangelogCategory.fromJson(json);
}

/// @nodoc
mixin _$ChangelogCategory {
  /// Changelog category name
  @JsonKey(name: 'name', required: true)
  String get name => throw _privateConstructorUsedError;

  /// Changelog category color
  @JsonKey(name: 'color', required: true)
  String get color => throw _privateConstructorUsedError;

  /// Serializes this ChangelogCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangelogCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangelogCategoryCopyWith<ChangelogCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangelogCategoryCopyWith<$Res> {
  factory $ChangelogCategoryCopyWith(
          ChangelogCategory value, $Res Function(ChangelogCategory) then) =
      _$ChangelogCategoryCopyWithImpl<$Res, ChangelogCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name', required: true) String name,
      @JsonKey(name: 'color', required: true) String color});
}

/// @nodoc
class _$ChangelogCategoryCopyWithImpl<$Res, $Val extends ChangelogCategory>
    implements $ChangelogCategoryCopyWith<$Res> {
  _$ChangelogCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangelogCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangelogCategoryImplCopyWith<$Res>
    implements $ChangelogCategoryCopyWith<$Res> {
  factory _$$ChangelogCategoryImplCopyWith(_$ChangelogCategoryImpl value,
          $Res Function(_$ChangelogCategoryImpl) then) =
      __$$ChangelogCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name', required: true) String name,
      @JsonKey(name: 'color', required: true) String color});
}

/// @nodoc
class __$$ChangelogCategoryImplCopyWithImpl<$Res>
    extends _$ChangelogCategoryCopyWithImpl<$Res, _$ChangelogCategoryImpl>
    implements _$$ChangelogCategoryImplCopyWith<$Res> {
  __$$ChangelogCategoryImplCopyWithImpl(_$ChangelogCategoryImpl _value,
      $Res Function(_$ChangelogCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangelogCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? color = null,
  }) {
    return _then(_$ChangelogCategoryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangelogCategoryImpl implements _ChangelogCategory {
  const _$ChangelogCategoryImpl(
      {@JsonKey(name: 'name', required: true) required this.name,
      @JsonKey(name: 'color', required: true) required this.color});

  factory _$ChangelogCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangelogCategoryImplFromJson(json);

  /// Changelog category name
  @override
  @JsonKey(name: 'name', required: true)
  final String name;

  /// Changelog category color
  @override
  @JsonKey(name: 'color', required: true)
  final String color;

  @override
  String toString() {
    return 'ChangelogCategory(name: $name, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangelogCategoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, color);

  /// Create a copy of ChangelogCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangelogCategoryImplCopyWith<_$ChangelogCategoryImpl> get copyWith =>
      __$$ChangelogCategoryImplCopyWithImpl<_$ChangelogCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangelogCategoryImplToJson(
      this,
    );
  }
}

abstract class _ChangelogCategory implements ChangelogCategory {
  const factory _ChangelogCategory(
      {@JsonKey(name: 'name', required: true) required final String name,
      @JsonKey(name: 'color', required: true)
      required final String color}) = _$ChangelogCategoryImpl;

  factory _ChangelogCategory.fromJson(Map<String, dynamic> json) =
      _$ChangelogCategoryImpl.fromJson;

  /// Changelog category name
  @override
  @JsonKey(name: 'name', required: true)
  String get name;

  /// Changelog category color
  @override
  @JsonKey(name: 'color', required: true)
  String get color;

  /// Create a copy of ChangelogCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangelogCategoryImplCopyWith<_$ChangelogCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Collection _$CollectionFromJson(Map<String, dynamic> json) {
  return _Collection.fromJson(json);
}

/// @nodoc
mixin _$Collection {
  /// The collection's unique ID.
  @JsonKey(name: 'collectionId', required: true)
  String get collectionId => throw _privateConstructorUsedError;

  /// The name of the collection.
  @JsonKey(name: 'name', required: true)
  String get name => throw _privateConstructorUsedError;

  /// A description of the collection.
  @JsonKey(name: 'description', required: true)
  String get description => throw _privateConstructorUsedError;

  /// The ID of the parent collection, if the collection is nested.
  String? get parentId => throw _privateConstructorUsedError;

  /// The icon of the collection.
  @JsonKey(name: 'icon')
  FBIcon? get icon => throw _privateConstructorUsedError;

  /// The ID of the help center this collection belongs to.
  @JsonKey(name: 'helpCenterId', required: true)
  String get helpCenterId => throw _privateConstructorUsedError;

  /// The ID of the organization that the collection belongs to.
  @JsonKey(name: 'organizationId', required: true)
  String get organizationId => throw _privateConstructorUsedError;

  /// The default locale of the collection.
  @JsonKey(name: 'defaultLocale', required: true)
  String get defaultLocale => throw _privateConstructorUsedError;

  /// The order of the collection in listings.
  int? get order => throw _privateConstructorUsedError;

  /// The type of the document, which is "collection".
  @JsonKey(name: 'type', defaultValue: 'collection')
  String get type => throw _privateConstructorUsedError;

  /// The path to the collection within the help center hierarchy.
  @JsonKey(name: 'path', required: true)
  String get path => throw _privateConstructorUsedError;

  /// The URL-friendly slug of the collection.
  @JsonKey(name: 'slug', required: true)
  String get slug => throw _privateConstructorUsedError;

  /// The Featurebase URL for the collection.
  @JsonKey(name: 'featurebaseUrl', required: true)
  String get featurebaseUrl => throw _privateConstructorUsedError;

  /// The custom domain URL for the collection.
  String? get externalUrl => throw _privateConstructorUsedError;

  /// The locale of the collection.
  @JsonKey(name: 'locale', required: true)
  String get locale => throw _privateConstructorUsedError;

  /// Authors of the article (will be null if hideAuthorInfo is true)
  @JsonKey(name: 'authors')
  List<Author>? get authors => throw _privateConstructorUsedError;

  /// An array of available locales for the collection.
  @JsonKey(name: 'availableLocales', required: true)
  List<String> get availableLocales => throw _privateConstructorUsedError;

  /// List of articles and collections (only returned when using the withStructure option)
  List<CollectionContent>? get structure => throw _privateConstructorUsedError;

  /// Serializes this Collection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionCopyWith<Collection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionCopyWith<$Res> {
  factory $CollectionCopyWith(
          Collection value, $Res Function(Collection) then) =
      _$CollectionCopyWithImpl<$Res, Collection>;
  @useResult
  $Res call(
      {@JsonKey(name: 'collectionId', required: true) String collectionId,
      @JsonKey(name: 'name', required: true) String name,
      @JsonKey(name: 'description', required: true) String description,
      String? parentId,
      @JsonKey(name: 'icon') FBIcon? icon,
      @JsonKey(name: 'helpCenterId', required: true) String helpCenterId,
      @JsonKey(name: 'organizationId', required: true) String organizationId,
      @JsonKey(name: 'defaultLocale', required: true) String defaultLocale,
      int? order,
      @JsonKey(name: 'type', defaultValue: 'collection') String type,
      @JsonKey(name: 'path', required: true) String path,
      @JsonKey(name: 'slug', required: true) String slug,
      @JsonKey(name: 'featurebaseUrl', required: true) String featurebaseUrl,
      String? externalUrl,
      @JsonKey(name: 'locale', required: true) String locale,
      @JsonKey(name: 'authors') List<Author>? authors,
      @JsonKey(name: 'availableLocales', required: true)
      List<String> availableLocales,
      List<CollectionContent>? structure});

  $FBIconCopyWith<$Res>? get icon;
}

/// @nodoc
class _$CollectionCopyWithImpl<$Res, $Val extends Collection>
    implements $CollectionCopyWith<$Res> {
  _$CollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionId = null,
    Object? name = null,
    Object? description = null,
    Object? parentId = freezed,
    Object? icon = freezed,
    Object? helpCenterId = null,
    Object? organizationId = null,
    Object? defaultLocale = null,
    Object? order = freezed,
    Object? type = null,
    Object? path = null,
    Object? slug = null,
    Object? featurebaseUrl = null,
    Object? externalUrl = freezed,
    Object? locale = null,
    Object? authors = freezed,
    Object? availableLocales = null,
    Object? structure = freezed,
  }) {
    return _then(_value.copyWith(
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as FBIcon?,
      helpCenterId: null == helpCenterId
          ? _value.helpCenterId
          : helpCenterId // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      defaultLocale: null == defaultLocale
          ? _value.defaultLocale
          : defaultLocale // ignore: cast_nullable_to_non_nullable
              as String,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      featurebaseUrl: null == featurebaseUrl
          ? _value.featurebaseUrl
          : featurebaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      authors: freezed == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<Author>?,
      availableLocales: null == availableLocales
          ? _value.availableLocales
          : availableLocales // ignore: cast_nullable_to_non_nullable
              as List<String>,
      structure: freezed == structure
          ? _value.structure
          : structure // ignore: cast_nullable_to_non_nullable
              as List<CollectionContent>?,
    ) as $Val);
  }

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FBIconCopyWith<$Res>? get icon {
    if (_value.icon == null) {
      return null;
    }

    return $FBIconCopyWith<$Res>(_value.icon!, (value) {
      return _then(_value.copyWith(icon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CollectionImplCopyWith<$Res>
    implements $CollectionCopyWith<$Res> {
  factory _$$CollectionImplCopyWith(
          _$CollectionImpl value, $Res Function(_$CollectionImpl) then) =
      __$$CollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'collectionId', required: true) String collectionId,
      @JsonKey(name: 'name', required: true) String name,
      @JsonKey(name: 'description', required: true) String description,
      String? parentId,
      @JsonKey(name: 'icon') FBIcon? icon,
      @JsonKey(name: 'helpCenterId', required: true) String helpCenterId,
      @JsonKey(name: 'organizationId', required: true) String organizationId,
      @JsonKey(name: 'defaultLocale', required: true) String defaultLocale,
      int? order,
      @JsonKey(name: 'type', defaultValue: 'collection') String type,
      @JsonKey(name: 'path', required: true) String path,
      @JsonKey(name: 'slug', required: true) String slug,
      @JsonKey(name: 'featurebaseUrl', required: true) String featurebaseUrl,
      String? externalUrl,
      @JsonKey(name: 'locale', required: true) String locale,
      @JsonKey(name: 'authors') List<Author>? authors,
      @JsonKey(name: 'availableLocales', required: true)
      List<String> availableLocales,
      List<CollectionContent>? structure});

  @override
  $FBIconCopyWith<$Res>? get icon;
}

/// @nodoc
class __$$CollectionImplCopyWithImpl<$Res>
    extends _$CollectionCopyWithImpl<$Res, _$CollectionImpl>
    implements _$$CollectionImplCopyWith<$Res> {
  __$$CollectionImplCopyWithImpl(
      _$CollectionImpl _value, $Res Function(_$CollectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionId = null,
    Object? name = null,
    Object? description = null,
    Object? parentId = freezed,
    Object? icon = freezed,
    Object? helpCenterId = null,
    Object? organizationId = null,
    Object? defaultLocale = null,
    Object? order = freezed,
    Object? type = null,
    Object? path = null,
    Object? slug = null,
    Object? featurebaseUrl = null,
    Object? externalUrl = freezed,
    Object? locale = null,
    Object? authors = freezed,
    Object? availableLocales = null,
    Object? structure = freezed,
  }) {
    return _then(_$CollectionImpl(
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as FBIcon?,
      helpCenterId: null == helpCenterId
          ? _value.helpCenterId
          : helpCenterId // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      defaultLocale: null == defaultLocale
          ? _value.defaultLocale
          : defaultLocale // ignore: cast_nullable_to_non_nullable
              as String,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      featurebaseUrl: null == featurebaseUrl
          ? _value.featurebaseUrl
          : featurebaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      authors: freezed == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<Author>?,
      availableLocales: null == availableLocales
          ? _value._availableLocales
          : availableLocales // ignore: cast_nullable_to_non_nullable
              as List<String>,
      structure: freezed == structure
          ? _value._structure
          : structure // ignore: cast_nullable_to_non_nullable
              as List<CollectionContent>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionImpl implements _Collection {
  const _$CollectionImpl(
      {@JsonKey(name: 'collectionId', required: true)
      required this.collectionId,
      @JsonKey(name: 'name', required: true) required this.name,
      @JsonKey(name: 'description', required: true) required this.description,
      required this.parentId,
      @JsonKey(name: 'icon') required this.icon,
      @JsonKey(name: 'helpCenterId', required: true) required this.helpCenterId,
      @JsonKey(name: 'organizationId', required: true)
      required this.organizationId,
      @JsonKey(name: 'defaultLocale', required: true)
      required this.defaultLocale,
      this.order,
      @JsonKey(name: 'type', defaultValue: 'collection') required this.type,
      @JsonKey(name: 'path', required: true) required this.path,
      @JsonKey(name: 'slug', required: true) required this.slug,
      @JsonKey(name: 'featurebaseUrl', required: true)
      required this.featurebaseUrl,
      required this.externalUrl,
      @JsonKey(name: 'locale', required: true) required this.locale,
      @JsonKey(name: 'authors') final List<Author>? authors,
      @JsonKey(name: 'availableLocales', required: true)
      required final List<String> availableLocales,
      final List<CollectionContent>? structure})
      : _authors = authors,
        _availableLocales = availableLocales,
        _structure = structure;

  factory _$CollectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionImplFromJson(json);

  /// The collection's unique ID.
  @override
  @JsonKey(name: 'collectionId', required: true)
  final String collectionId;

  /// The name of the collection.
  @override
  @JsonKey(name: 'name', required: true)
  final String name;

  /// A description of the collection.
  @override
  @JsonKey(name: 'description', required: true)
  final String description;

  /// The ID of the parent collection, if the collection is nested.
  @override
  final String? parentId;

  /// The icon of the collection.
  @override
  @JsonKey(name: 'icon')
  final FBIcon? icon;

  /// The ID of the help center this collection belongs to.
  @override
  @JsonKey(name: 'helpCenterId', required: true)
  final String helpCenterId;

  /// The ID of the organization that the collection belongs to.
  @override
  @JsonKey(name: 'organizationId', required: true)
  final String organizationId;

  /// The default locale of the collection.
  @override
  @JsonKey(name: 'defaultLocale', required: true)
  final String defaultLocale;

  /// The order of the collection in listings.
  @override
  final int? order;

  /// The type of the document, which is "collection".
  @override
  @JsonKey(name: 'type', defaultValue: 'collection')
  final String type;

  /// The path to the collection within the help center hierarchy.
  @override
  @JsonKey(name: 'path', required: true)
  final String path;

  /// The URL-friendly slug of the collection.
  @override
  @JsonKey(name: 'slug', required: true)
  final String slug;

  /// The Featurebase URL for the collection.
  @override
  @JsonKey(name: 'featurebaseUrl', required: true)
  final String featurebaseUrl;

  /// The custom domain URL for the collection.
  @override
  final String? externalUrl;

  /// The locale of the collection.
  @override
  @JsonKey(name: 'locale', required: true)
  final String locale;

  /// Authors of the article (will be null if hideAuthorInfo is true)
  final List<Author>? _authors;

  /// Authors of the article (will be null if hideAuthorInfo is true)
  @override
  @JsonKey(name: 'authors')
  List<Author>? get authors {
    final value = _authors;
    if (value == null) return null;
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// An array of available locales for the collection.
  final List<String> _availableLocales;

  /// An array of available locales for the collection.
  @override
  @JsonKey(name: 'availableLocales', required: true)
  List<String> get availableLocales {
    if (_availableLocales is EqualUnmodifiableListView)
      return _availableLocales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableLocales);
  }

  /// List of articles and collections (only returned when using the withStructure option)
  final List<CollectionContent>? _structure;

  /// List of articles and collections (only returned when using the withStructure option)
  @override
  List<CollectionContent>? get structure {
    final value = _structure;
    if (value == null) return null;
    if (_structure is EqualUnmodifiableListView) return _structure;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Collection(collectionId: $collectionId, name: $name, description: $description, parentId: $parentId, icon: $icon, helpCenterId: $helpCenterId, organizationId: $organizationId, defaultLocale: $defaultLocale, order: $order, type: $type, path: $path, slug: $slug, featurebaseUrl: $featurebaseUrl, externalUrl: $externalUrl, locale: $locale, authors: $authors, availableLocales: $availableLocales, structure: $structure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionImpl &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.helpCenterId, helpCenterId) ||
                other.helpCenterId == helpCenterId) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.defaultLocale, defaultLocale) ||
                other.defaultLocale == defaultLocale) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.featurebaseUrl, featurebaseUrl) ||
                other.featurebaseUrl == featurebaseUrl) &&
            (identical(other.externalUrl, externalUrl) ||
                other.externalUrl == externalUrl) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            const DeepCollectionEquality()
                .equals(other._availableLocales, _availableLocales) &&
            const DeepCollectionEquality()
                .equals(other._structure, _structure));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      collectionId,
      name,
      description,
      parentId,
      icon,
      helpCenterId,
      organizationId,
      defaultLocale,
      order,
      type,
      path,
      slug,
      featurebaseUrl,
      externalUrl,
      locale,
      const DeepCollectionEquality().hash(_authors),
      const DeepCollectionEquality().hash(_availableLocales),
      const DeepCollectionEquality().hash(_structure));

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionImplCopyWith<_$CollectionImpl> get copyWith =>
      __$$CollectionImplCopyWithImpl<_$CollectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionImplToJson(
      this,
    );
  }
}

abstract class _Collection implements Collection {
  const factory _Collection(
      {@JsonKey(name: 'collectionId', required: true)
      required final String collectionId,
      @JsonKey(name: 'name', required: true) required final String name,
      @JsonKey(name: 'description', required: true)
      required final String description,
      required final String? parentId,
      @JsonKey(name: 'icon') required final FBIcon? icon,
      @JsonKey(name: 'helpCenterId', required: true)
      required final String helpCenterId,
      @JsonKey(name: 'organizationId', required: true)
      required final String organizationId,
      @JsonKey(name: 'defaultLocale', required: true)
      required final String defaultLocale,
      final int? order,
      @JsonKey(name: 'type', defaultValue: 'collection')
      required final String type,
      @JsonKey(name: 'path', required: true) required final String path,
      @JsonKey(name: 'slug', required: true) required final String slug,
      @JsonKey(name: 'featurebaseUrl', required: true)
      required final String featurebaseUrl,
      required final String? externalUrl,
      @JsonKey(name: 'locale', required: true) required final String locale,
      @JsonKey(name: 'authors') final List<Author>? authors,
      @JsonKey(name: 'availableLocales', required: true)
      required final List<String> availableLocales,
      final List<CollectionContent>? structure}) = _$CollectionImpl;

  factory _Collection.fromJson(Map<String, dynamic> json) =
      _$CollectionImpl.fromJson;

  /// The collection's unique ID.
  @override
  @JsonKey(name: 'collectionId', required: true)
  String get collectionId;

  /// The name of the collection.
  @override
  @JsonKey(name: 'name', required: true)
  String get name;

  /// A description of the collection.
  @override
  @JsonKey(name: 'description', required: true)
  String get description;

  /// The ID of the parent collection, if the collection is nested.
  @override
  String? get parentId;

  /// The icon of the collection.
  @override
  @JsonKey(name: 'icon')
  FBIcon? get icon;

  /// The ID of the help center this collection belongs to.
  @override
  @JsonKey(name: 'helpCenterId', required: true)
  String get helpCenterId;

  /// The ID of the organization that the collection belongs to.
  @override
  @JsonKey(name: 'organizationId', required: true)
  String get organizationId;

  /// The default locale of the collection.
  @override
  @JsonKey(name: 'defaultLocale', required: true)
  String get defaultLocale;

  /// The order of the collection in listings.
  @override
  int? get order;

  /// The type of the document, which is "collection".
  @override
  @JsonKey(name: 'type', defaultValue: 'collection')
  String get type;

  /// The path to the collection within the help center hierarchy.
  @override
  @JsonKey(name: 'path', required: true)
  String get path;

  /// The URL-friendly slug of the collection.
  @override
  @JsonKey(name: 'slug', required: true)
  String get slug;

  /// The Featurebase URL for the collection.
  @override
  @JsonKey(name: 'featurebaseUrl', required: true)
  String get featurebaseUrl;

  /// The custom domain URL for the collection.
  @override
  String? get externalUrl;

  /// The locale of the collection.
  @override
  @JsonKey(name: 'locale', required: true)
  String get locale;

  /// Authors of the article (will be null if hideAuthorInfo is true)
  @override
  @JsonKey(name: 'authors')
  List<Author>? get authors;

  /// An array of available locales for the collection.
  @override
  @JsonKey(name: 'availableLocales', required: true)
  List<String> get availableLocales;

  /// List of articles and collections (only returned when using the withStructure option)
  @override
  List<CollectionContent>? get structure;

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionImplCopyWith<_$CollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CollectionContent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Article article) article,
    required TResult Function(Collection collection) collection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Article article)? article,
    TResult? Function(Collection collection)? collection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Article article)? article,
    TResult Function(Collection collection)? collection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CollectionContentArticle value) article,
    required TResult Function(_CollectionContentCollection value) collection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CollectionContentArticle value)? article,
    TResult? Function(_CollectionContentCollection value)? collection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CollectionContentArticle value)? article,
    TResult Function(_CollectionContentCollection value)? collection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionContentCopyWith<$Res> {
  factory $CollectionContentCopyWith(
          CollectionContent value, $Res Function(CollectionContent) then) =
      _$CollectionContentCopyWithImpl<$Res, CollectionContent>;
}

/// @nodoc
class _$CollectionContentCopyWithImpl<$Res, $Val extends CollectionContent>
    implements $CollectionContentCopyWith<$Res> {
  _$CollectionContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionContent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CollectionContentArticleImplCopyWith<$Res> {
  factory _$$CollectionContentArticleImplCopyWith(
          _$CollectionContentArticleImpl value,
          $Res Function(_$CollectionContentArticleImpl) then) =
      __$$CollectionContentArticleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Article article});

  $ArticleCopyWith<$Res> get article;
}

/// @nodoc
class __$$CollectionContentArticleImplCopyWithImpl<$Res>
    extends _$CollectionContentCopyWithImpl<$Res,
        _$CollectionContentArticleImpl>
    implements _$$CollectionContentArticleImplCopyWith<$Res> {
  __$$CollectionContentArticleImplCopyWithImpl(
      _$CollectionContentArticleImpl _value,
      $Res Function(_$CollectionContentArticleImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? article = null,
  }) {
    return _then(_$CollectionContentArticleImpl(
      null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article,
    ));
  }

  /// Create a copy of CollectionContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArticleCopyWith<$Res> get article {
    return $ArticleCopyWith<$Res>(_value.article, (value) {
      return _then(_value.copyWith(article: value));
    });
  }
}

/// @nodoc

@JsonKey(includeFromJson: false)
class _$CollectionContentArticleImpl implements _CollectionContentArticle {
  const _$CollectionContentArticleImpl(this.article);

  @override
  final Article article;

  @override
  String toString() {
    return 'CollectionContent.article(article: $article)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionContentArticleImpl &&
            (identical(other.article, article) || other.article == article));
  }

  @override
  int get hashCode => Object.hash(runtimeType, article);

  /// Create a copy of CollectionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionContentArticleImplCopyWith<_$CollectionContentArticleImpl>
      get copyWith => __$$CollectionContentArticleImplCopyWithImpl<
          _$CollectionContentArticleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Article article) article,
    required TResult Function(Collection collection) collection,
  }) {
    return article(this.article);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Article article)? article,
    TResult? Function(Collection collection)? collection,
  }) {
    return article?.call(this.article);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Article article)? article,
    TResult Function(Collection collection)? collection,
    required TResult orElse(),
  }) {
    if (article != null) {
      return article(this.article);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CollectionContentArticle value) article,
    required TResult Function(_CollectionContentCollection value) collection,
  }) {
    return article(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CollectionContentArticle value)? article,
    TResult? Function(_CollectionContentCollection value)? collection,
  }) {
    return article?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CollectionContentArticle value)? article,
    TResult Function(_CollectionContentCollection value)? collection,
    required TResult orElse(),
  }) {
    if (article != null) {
      return article(this);
    }
    return orElse();
  }

  Map<String, dynamic> toJson() {
    return when(
      article: (article) => article.toJson(),
      collection: (collection) => collection.toJson(),
    );
  }
}

abstract class _CollectionContentArticle implements CollectionContent {
  const factory _CollectionContentArticle(final Article article) =
      _$CollectionContentArticleImpl;

  Article get article;

  /// Create a copy of CollectionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionContentArticleImplCopyWith<_$CollectionContentArticleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CollectionContentCollectionImplCopyWith<$Res> {
  factory _$$CollectionContentCollectionImplCopyWith(
          _$CollectionContentCollectionImpl value,
          $Res Function(_$CollectionContentCollectionImpl) then) =
      __$$CollectionContentCollectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Collection collection});

  $CollectionCopyWith<$Res> get collection;
}

/// @nodoc
class __$$CollectionContentCollectionImplCopyWithImpl<$Res>
    extends _$CollectionContentCopyWithImpl<$Res,
        _$CollectionContentCollectionImpl>
    implements _$$CollectionContentCollectionImplCopyWith<$Res> {
  __$$CollectionContentCollectionImplCopyWithImpl(
      _$CollectionContentCollectionImpl _value,
      $Res Function(_$CollectionContentCollectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collection = null,
  }) {
    return _then(_$CollectionContentCollectionImpl(
      null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as Collection,
    ));
  }

  /// Create a copy of CollectionContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CollectionCopyWith<$Res> get collection {
    return $CollectionCopyWith<$Res>(_value.collection, (value) {
      return _then(_value.copyWith(collection: value));
    });
  }
}

/// @nodoc

@JsonKey(includeFromJson: false)
class _$CollectionContentCollectionImpl
    implements _CollectionContentCollection {
  const _$CollectionContentCollectionImpl(this.collection);

  @override
  final Collection collection;

  @override
  String toString() {
    return 'CollectionContent.collection(collection: $collection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionContentCollectionImpl &&
            (identical(other.collection, collection) ||
                other.collection == collection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, collection);

  /// Create a copy of CollectionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionContentCollectionImplCopyWith<_$CollectionContentCollectionImpl>
      get copyWith => __$$CollectionContentCollectionImplCopyWithImpl<
          _$CollectionContentCollectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Article article) article,
    required TResult Function(Collection collection) collection,
  }) {
    return collection(this.collection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Article article)? article,
    TResult? Function(Collection collection)? collection,
  }) {
    return collection?.call(this.collection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Article article)? article,
    TResult Function(Collection collection)? collection,
    required TResult orElse(),
  }) {
    if (collection != null) {
      return collection(this.collection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CollectionContentArticle value) article,
    required TResult Function(_CollectionContentCollection value) collection,
  }) {
    return collection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CollectionContentArticle value)? article,
    TResult? Function(_CollectionContentCollection value)? collection,
  }) {
    return collection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CollectionContentArticle value)? article,
    TResult Function(_CollectionContentCollection value)? collection,
    required TResult orElse(),
  }) {
    if (collection != null) {
      return collection(this);
    }
    return orElse();
  }

  Map<String, dynamic> toJson() {
    return when(
      article: (article) => article.toJson(),
      collection: (collection) => collection.toJson(),
    );
  }
}

abstract class _CollectionContentCollection implements CollectionContent {
  const factory _CollectionContentCollection(final Collection collection) =
      _$CollectionContentCollectionImpl;

  Collection get collection;

  /// Create a copy of CollectionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionContentCollectionImplCopyWith<_$CollectionContentCollectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HelpCenter _$HelpCenterFromJson(Map<String, dynamic> json) {
  return _HelpCenter.fromJson(json);
}

/// @nodoc
mixin _$HelpCenter {
  /// The help center's unique ID.
  String get helpCenterId => throw _privateConstructorUsedError;

  /// The display name of the help center. Usually your company name like "Featurebase".
  String get displayName => throw _privateConstructorUsedError;

  /// The title of the help center. Something like "How can we help you?" or "YourCompany Help Center".
  String get title => throw _privateConstructorUsedError;

  /// The description of the help center.
  String get description => throw _privateConstructorUsedError;

  /// The placeholder text for the search input.
  String get searchPlaceholder => throw _privateConstructorUsedError;

  /// An array of navigation items for the help center.
  List<NavItem> get navItems => throw _privateConstructorUsedError;

  /// Indicates whether the help center is public.
  bool get isPublic => throw _privateConstructorUsedError;

  /// The ID of the organization that the help center belongs to.
  String get organizationId => throw _privateConstructorUsedError;

  /// The default locale of the help center.
  String get defaultLocale => throw _privateConstructorUsedError;

  /// The locale of the help center.
  String get locale => throw _privateConstructorUsedError;

  /// An array of available locales for the help center.
  List<String> get availableLocales => throw _privateConstructorUsedError;

  /// The date when the help center was created.
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// The date when the help center was last updated.
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Whether to hide the date info on articles.
  bool get hideDateInfo => throw _privateConstructorUsedError;

  /// Whether to hide the author info on articles.
  bool get hideAuthorInfo => throw _privateConstructorUsedError;

  /// List of collections (only returned when using the withStructure option)
  List<Collection>? get structure => throw _privateConstructorUsedError;

  /// Serializes this HelpCenter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HelpCenter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HelpCenterCopyWith<HelpCenter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelpCenterCopyWith<$Res> {
  factory $HelpCenterCopyWith(
          HelpCenter value, $Res Function(HelpCenter) then) =
      _$HelpCenterCopyWithImpl<$Res, HelpCenter>;
  @useResult
  $Res call(
      {String helpCenterId,
      String displayName,
      String title,
      String description,
      String searchPlaceholder,
      List<NavItem> navItems,
      bool isPublic,
      String organizationId,
      String defaultLocale,
      String locale,
      List<String> availableLocales,
      DateTime createdAt,
      DateTime updatedAt,
      bool hideDateInfo,
      bool hideAuthorInfo,
      List<Collection>? structure});
}

/// @nodoc
class _$HelpCenterCopyWithImpl<$Res, $Val extends HelpCenter>
    implements $HelpCenterCopyWith<$Res> {
  _$HelpCenterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HelpCenter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? helpCenterId = null,
    Object? displayName = null,
    Object? title = null,
    Object? description = null,
    Object? searchPlaceholder = null,
    Object? navItems = null,
    Object? isPublic = null,
    Object? organizationId = null,
    Object? defaultLocale = null,
    Object? locale = null,
    Object? availableLocales = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? hideDateInfo = null,
    Object? hideAuthorInfo = null,
    Object? structure = freezed,
  }) {
    return _then(_value.copyWith(
      helpCenterId: null == helpCenterId
          ? _value.helpCenterId
          : helpCenterId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      searchPlaceholder: null == searchPlaceholder
          ? _value.searchPlaceholder
          : searchPlaceholder // ignore: cast_nullable_to_non_nullable
              as String,
      navItems: null == navItems
          ? _value.navItems
          : navItems // ignore: cast_nullable_to_non_nullable
              as List<NavItem>,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      defaultLocale: null == defaultLocale
          ? _value.defaultLocale
          : defaultLocale // ignore: cast_nullable_to_non_nullable
              as String,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      availableLocales: null == availableLocales
          ? _value.availableLocales
          : availableLocales // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hideDateInfo: null == hideDateInfo
          ? _value.hideDateInfo
          : hideDateInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      hideAuthorInfo: null == hideAuthorInfo
          ? _value.hideAuthorInfo
          : hideAuthorInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      structure: freezed == structure
          ? _value.structure
          : structure // ignore: cast_nullable_to_non_nullable
              as List<Collection>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelpCenterImplCopyWith<$Res>
    implements $HelpCenterCopyWith<$Res> {
  factory _$$HelpCenterImplCopyWith(
          _$HelpCenterImpl value, $Res Function(_$HelpCenterImpl) then) =
      __$$HelpCenterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String helpCenterId,
      String displayName,
      String title,
      String description,
      String searchPlaceholder,
      List<NavItem> navItems,
      bool isPublic,
      String organizationId,
      String defaultLocale,
      String locale,
      List<String> availableLocales,
      DateTime createdAt,
      DateTime updatedAt,
      bool hideDateInfo,
      bool hideAuthorInfo,
      List<Collection>? structure});
}

/// @nodoc
class __$$HelpCenterImplCopyWithImpl<$Res>
    extends _$HelpCenterCopyWithImpl<$Res, _$HelpCenterImpl>
    implements _$$HelpCenterImplCopyWith<$Res> {
  __$$HelpCenterImplCopyWithImpl(
      _$HelpCenterImpl _value, $Res Function(_$HelpCenterImpl) _then)
      : super(_value, _then);

  /// Create a copy of HelpCenter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? helpCenterId = null,
    Object? displayName = null,
    Object? title = null,
    Object? description = null,
    Object? searchPlaceholder = null,
    Object? navItems = null,
    Object? isPublic = null,
    Object? organizationId = null,
    Object? defaultLocale = null,
    Object? locale = null,
    Object? availableLocales = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? hideDateInfo = null,
    Object? hideAuthorInfo = null,
    Object? structure = freezed,
  }) {
    return _then(_$HelpCenterImpl(
      helpCenterId: null == helpCenterId
          ? _value.helpCenterId
          : helpCenterId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      searchPlaceholder: null == searchPlaceholder
          ? _value.searchPlaceholder
          : searchPlaceholder // ignore: cast_nullable_to_non_nullable
              as String,
      navItems: null == navItems
          ? _value._navItems
          : navItems // ignore: cast_nullable_to_non_nullable
              as List<NavItem>,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      defaultLocale: null == defaultLocale
          ? _value.defaultLocale
          : defaultLocale // ignore: cast_nullable_to_non_nullable
              as String,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      availableLocales: null == availableLocales
          ? _value._availableLocales
          : availableLocales // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hideDateInfo: null == hideDateInfo
          ? _value.hideDateInfo
          : hideDateInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      hideAuthorInfo: null == hideAuthorInfo
          ? _value.hideAuthorInfo
          : hideAuthorInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      structure: freezed == structure
          ? _value._structure
          : structure // ignore: cast_nullable_to_non_nullable
              as List<Collection>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelpCenterImpl implements _HelpCenter {
  const _$HelpCenterImpl(
      {required this.helpCenterId,
      required this.displayName,
      required this.title,
      required this.description,
      required this.searchPlaceholder,
      required final List<NavItem> navItems,
      required this.isPublic,
      required this.organizationId,
      required this.defaultLocale,
      required this.locale,
      required final List<String> availableLocales,
      required this.createdAt,
      required this.updatedAt,
      this.hideDateInfo = false,
      this.hideAuthorInfo = false,
      final List<Collection>? structure})
      : _navItems = navItems,
        _availableLocales = availableLocales,
        _structure = structure;

  factory _$HelpCenterImpl.fromJson(Map<String, dynamic> json) =>
      _$$HelpCenterImplFromJson(json);

  /// The help center's unique ID.
  @override
  final String helpCenterId;

  /// The display name of the help center. Usually your company name like "Featurebase".
  @override
  final String displayName;

  /// The title of the help center. Something like "How can we help you?" or "YourCompany Help Center".
  @override
  final String title;

  /// The description of the help center.
  @override
  final String description;

  /// The placeholder text for the search input.
  @override
  final String searchPlaceholder;

  /// An array of navigation items for the help center.
  final List<NavItem> _navItems;

  /// An array of navigation items for the help center.
  @override
  List<NavItem> get navItems {
    if (_navItems is EqualUnmodifiableListView) return _navItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_navItems);
  }

  /// Indicates whether the help center is public.
  @override
  final bool isPublic;

  /// The ID of the organization that the help center belongs to.
  @override
  final String organizationId;

  /// The default locale of the help center.
  @override
  final String defaultLocale;

  /// The locale of the help center.
  @override
  final String locale;

  /// An array of available locales for the help center.
  final List<String> _availableLocales;

  /// An array of available locales for the help center.
  @override
  List<String> get availableLocales {
    if (_availableLocales is EqualUnmodifiableListView)
      return _availableLocales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableLocales);
  }

  /// The date when the help center was created.
  @override
  final DateTime createdAt;

  /// The date when the help center was last updated.
  @override
  final DateTime updatedAt;

  /// Whether to hide the date info on articles.
  @override
  @JsonKey()
  final bool hideDateInfo;

  /// Whether to hide the author info on articles.
  @override
  @JsonKey()
  final bool hideAuthorInfo;

  /// List of collections (only returned when using the withStructure option)
  final List<Collection>? _structure;

  /// List of collections (only returned when using the withStructure option)
  @override
  List<Collection>? get structure {
    final value = _structure;
    if (value == null) return null;
    if (_structure is EqualUnmodifiableListView) return _structure;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HelpCenter(helpCenterId: $helpCenterId, displayName: $displayName, title: $title, description: $description, searchPlaceholder: $searchPlaceholder, navItems: $navItems, isPublic: $isPublic, organizationId: $organizationId, defaultLocale: $defaultLocale, locale: $locale, availableLocales: $availableLocales, createdAt: $createdAt, updatedAt: $updatedAt, hideDateInfo: $hideDateInfo, hideAuthorInfo: $hideAuthorInfo, structure: $structure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelpCenterImpl &&
            (identical(other.helpCenterId, helpCenterId) ||
                other.helpCenterId == helpCenterId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.searchPlaceholder, searchPlaceholder) ||
                other.searchPlaceholder == searchPlaceholder) &&
            const DeepCollectionEquality().equals(other._navItems, _navItems) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.defaultLocale, defaultLocale) ||
                other.defaultLocale == defaultLocale) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            const DeepCollectionEquality()
                .equals(other._availableLocales, _availableLocales) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.hideDateInfo, hideDateInfo) ||
                other.hideDateInfo == hideDateInfo) &&
            (identical(other.hideAuthorInfo, hideAuthorInfo) ||
                other.hideAuthorInfo == hideAuthorInfo) &&
            const DeepCollectionEquality()
                .equals(other._structure, _structure));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      helpCenterId,
      displayName,
      title,
      description,
      searchPlaceholder,
      const DeepCollectionEquality().hash(_navItems),
      isPublic,
      organizationId,
      defaultLocale,
      locale,
      const DeepCollectionEquality().hash(_availableLocales),
      createdAt,
      updatedAt,
      hideDateInfo,
      hideAuthorInfo,
      const DeepCollectionEquality().hash(_structure));

  /// Create a copy of HelpCenter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HelpCenterImplCopyWith<_$HelpCenterImpl> get copyWith =>
      __$$HelpCenterImplCopyWithImpl<_$HelpCenterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelpCenterImplToJson(
      this,
    );
  }
}

abstract class _HelpCenter implements HelpCenter {
  const factory _HelpCenter(
      {required final String helpCenterId,
      required final String displayName,
      required final String title,
      required final String description,
      required final String searchPlaceholder,
      required final List<NavItem> navItems,
      required final bool isPublic,
      required final String organizationId,
      required final String defaultLocale,
      required final String locale,
      required final List<String> availableLocales,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final bool hideDateInfo,
      final bool hideAuthorInfo,
      final List<Collection>? structure}) = _$HelpCenterImpl;

  factory _HelpCenter.fromJson(Map<String, dynamic> json) =
      _$HelpCenterImpl.fromJson;

  /// The help center's unique ID.
  @override
  String get helpCenterId;

  /// The display name of the help center. Usually your company name like "Featurebase".
  @override
  String get displayName;

  /// The title of the help center. Something like "How can we help you?" or "YourCompany Help Center".
  @override
  String get title;

  /// The description of the help center.
  @override
  String get description;

  /// The placeholder text for the search input.
  @override
  String get searchPlaceholder;

  /// An array of navigation items for the help center.
  @override
  List<NavItem> get navItems;

  /// Indicates whether the help center is public.
  @override
  bool get isPublic;

  /// The ID of the organization that the help center belongs to.
  @override
  String get organizationId;

  /// The default locale of the help center.
  @override
  String get defaultLocale;

  /// The locale of the help center.
  @override
  String get locale;

  /// An array of available locales for the help center.
  @override
  List<String> get availableLocales;

  /// The date when the help center was created.
  @override
  DateTime get createdAt;

  /// The date when the help center was last updated.
  @override
  DateTime get updatedAt;

  /// Whether to hide the date info on articles.
  @override
  bool get hideDateInfo;

  /// Whether to hide the author info on articles.
  @override
  bool get hideAuthorInfo;

  /// List of collections (only returned when using the withStructure option)
  @override
  List<Collection>? get structure;

  /// Create a copy of HelpCenter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HelpCenterImplCopyWith<_$HelpCenterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FBIcon _$FBIconFromJson(Map<String, dynamic> json) {
  return _FBIcon.fromJson(json);
}

/// @nodoc
mixin _$FBIcon {
  /// Icon value
  @JsonKey(name: 'value', required: true)
  String get value => throw _privateConstructorUsedError;

  /// Icon type
  @JsonKey(name: 'type', required: true)
  String get type => throw _privateConstructorUsedError;

  /// Serializes this FBIcon to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FBIcon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FBIconCopyWith<FBIcon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FBIconCopyWith<$Res> {
  factory $FBIconCopyWith(FBIcon value, $Res Function(FBIcon) then) =
      _$FBIconCopyWithImpl<$Res, FBIcon>;
  @useResult
  $Res call(
      {@JsonKey(name: 'value', required: true) String value,
      @JsonKey(name: 'type', required: true) String type});
}

/// @nodoc
class _$FBIconCopyWithImpl<$Res, $Val extends FBIcon>
    implements $FBIconCopyWith<$Res> {
  _$FBIconCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FBIcon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FBIconImplCopyWith<$Res> implements $FBIconCopyWith<$Res> {
  factory _$$FBIconImplCopyWith(
          _$FBIconImpl value, $Res Function(_$FBIconImpl) then) =
      __$$FBIconImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'value', required: true) String value,
      @JsonKey(name: 'type', required: true) String type});
}

/// @nodoc
class __$$FBIconImplCopyWithImpl<$Res>
    extends _$FBIconCopyWithImpl<$Res, _$FBIconImpl>
    implements _$$FBIconImplCopyWith<$Res> {
  __$$FBIconImplCopyWithImpl(
      _$FBIconImpl _value, $Res Function(_$FBIconImpl) _then)
      : super(_value, _then);

  /// Create a copy of FBIcon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? type = null,
  }) {
    return _then(_$FBIconImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FBIconImpl implements _FBIcon {
  const _$FBIconImpl(
      {@JsonKey(name: 'value', required: true) required this.value,
      @JsonKey(name: 'type', required: true) required this.type});

  factory _$FBIconImpl.fromJson(Map<String, dynamic> json) =>
      _$$FBIconImplFromJson(json);

  /// Icon value
  @override
  @JsonKey(name: 'value', required: true)
  final String value;

  /// Icon type
  @override
  @JsonKey(name: 'type', required: true)
  final String type;

  @override
  String toString() {
    return 'FBIcon(value: $value, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FBIconImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, type);

  /// Create a copy of FBIcon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FBIconImplCopyWith<_$FBIconImpl> get copyWith =>
      __$$FBIconImplCopyWithImpl<_$FBIconImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FBIconImplToJson(
      this,
    );
  }
}

abstract class _FBIcon implements FBIcon {
  const factory _FBIcon(
          {@JsonKey(name: 'value', required: true) required final String value,
          @JsonKey(name: 'type', required: true) required final String type}) =
      _$FBIconImpl;

  factory _FBIcon.fromJson(Map<String, dynamic> json) = _$FBIconImpl.fromJson;

  /// Icon value
  @override
  @JsonKey(name: 'value', required: true)
  String get value;

  /// Icon type
  @override
  @JsonKey(name: 'type', required: true)
  String get type;

  /// Create a copy of FBIcon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FBIconImplCopyWith<_$FBIconImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NavItem _$NavItemFromJson(Map<String, dynamic> json) {
  return _NavItem.fromJson(json);
}

/// @nodoc
mixin _$NavItem {
  /// The type of the nav item
  String get type => throw _privateConstructorUsedError;

  /// The title of the nav item
  String get title => throw _privateConstructorUsedError;

  /// The url of the nav item
  String get url => throw _privateConstructorUsedError;

  /// The icon of the nav item
  @JsonKey(name: 'icon')
  FBIcon? get icon => throw _privateConstructorUsedError;

  /// Serializes this NavItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NavItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NavItemCopyWith<NavItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavItemCopyWith<$Res> {
  factory $NavItemCopyWith(NavItem value, $Res Function(NavItem) then) =
      _$NavItemCopyWithImpl<$Res, NavItem>;
  @useResult
  $Res call(
      {String type,
      String title,
      String url,
      @JsonKey(name: 'icon') FBIcon? icon});

  $FBIconCopyWith<$Res>? get icon;
}

/// @nodoc
class _$NavItemCopyWithImpl<$Res, $Val extends NavItem>
    implements $NavItemCopyWith<$Res> {
  _$NavItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NavItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? url = null,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as FBIcon?,
    ) as $Val);
  }

  /// Create a copy of NavItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FBIconCopyWith<$Res>? get icon {
    if (_value.icon == null) {
      return null;
    }

    return $FBIconCopyWith<$Res>(_value.icon!, (value) {
      return _then(_value.copyWith(icon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NavItemImplCopyWith<$Res> implements $NavItemCopyWith<$Res> {
  factory _$$NavItemImplCopyWith(
          _$NavItemImpl value, $Res Function(_$NavItemImpl) then) =
      __$$NavItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String title,
      String url,
      @JsonKey(name: 'icon') FBIcon? icon});

  @override
  $FBIconCopyWith<$Res>? get icon;
}

/// @nodoc
class __$$NavItemImplCopyWithImpl<$Res>
    extends _$NavItemCopyWithImpl<$Res, _$NavItemImpl>
    implements _$$NavItemImplCopyWith<$Res> {
  __$$NavItemImplCopyWithImpl(
      _$NavItemImpl _value, $Res Function(_$NavItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? url = null,
    Object? icon = freezed,
  }) {
    return _then(_$NavItemImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as FBIcon?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NavItemImpl implements _NavItem {
  const _$NavItemImpl(
      {required this.type,
      required this.title,
      required this.url,
      @JsonKey(name: 'icon') required this.icon});

  factory _$NavItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$NavItemImplFromJson(json);

  /// The type of the nav item
  @override
  final String type;

  /// The title of the nav item
  @override
  final String title;

  /// The url of the nav item
  @override
  final String url;

  /// The icon of the nav item
  @override
  @JsonKey(name: 'icon')
  final FBIcon? icon;

  @override
  String toString() {
    return 'NavItem(type: $type, title: $title, url: $url, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavItemImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, title, url, icon);

  /// Create a copy of NavItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavItemImplCopyWith<_$NavItemImpl> get copyWith =>
      __$$NavItemImplCopyWithImpl<_$NavItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NavItemImplToJson(
      this,
    );
  }
}

abstract class _NavItem implements NavItem {
  const factory _NavItem(
      {required final String type,
      required final String title,
      required final String url,
      @JsonKey(name: 'icon') required final FBIcon? icon}) = _$NavItemImpl;

  factory _NavItem.fromJson(Map<String, dynamic> json) = _$NavItemImpl.fromJson;

  /// The type of the nav item
  @override
  String get type;

  /// The title of the nav item
  @override
  String get title;

  /// The url of the nav item
  @override
  String get url;

  /// The icon of the nav item
  @override
  @JsonKey(name: 'icon')
  FBIcon? get icon;

  /// Create a copy of NavItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavItemImplCopyWith<_$NavItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Organization _$OrganizationFromJson(Map<String, dynamic> json) {
  return _Organization.fromJson(json);
}

/// @nodoc
mixin _$Organization {
  /// The name of the organization
  @JsonKey(name: 'name', required: true)
  String get name => throw _privateConstructorUsedError;

  /// The display name of the organization
  @JsonKey(name: 'displayName', required: true)
  String get displayName => throw _privateConstructorUsedError;

  /// Color hash code
  @JsonKey(name: 'color', required: true)
  String get color => throw _privateConstructorUsedError;

  /// SSO Url
  @JsonKey(name: 'ssoUrl')
  String? get ssoUrl => throw _privateConstructorUsedError;

  /// Custom domain
  @JsonKey(name: 'customDomain')
  String? get customDomain => throw _privateConstructorUsedError;

  /// The widgets of the organization
  @JsonKey(name: 'widget')
  AIOWidget? get widget => throw _privateConstructorUsedError;

  /// The settings of the organization
  @JsonKey(name: 'settings', required: true)
  OrganizationSettings get settings => throw _privateConstructorUsedError;

  /// The post categories of the organization
  @JsonKey(name: 'postCategories', required: true)
  List<PostCategory> get postCategories => throw _privateConstructorUsedError;

  /// Picture url
  @JsonKey(name: 'picture')
  String? get picture => throw _privateConstructorUsedError;

  /// Serializes this Organization to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Organization
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizationCopyWith<Organization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationCopyWith<$Res> {
  factory $OrganizationCopyWith(
          Organization value, $Res Function(Organization) then) =
      _$OrganizationCopyWithImpl<$Res, Organization>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name', required: true) String name,
      @JsonKey(name: 'displayName', required: true) String displayName,
      @JsonKey(name: 'color', required: true) String color,
      @JsonKey(name: 'ssoUrl') String? ssoUrl,
      @JsonKey(name: 'customDomain') String? customDomain,
      @JsonKey(name: 'widget') AIOWidget? widget,
      @JsonKey(name: 'settings', required: true) OrganizationSettings settings,
      @JsonKey(name: 'postCategories', required: true)
      List<PostCategory> postCategories,
      @JsonKey(name: 'picture') String? picture});

  $AIOWidgetCopyWith<$Res>? get widget;
  $OrganizationSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$OrganizationCopyWithImpl<$Res, $Val extends Organization>
    implements $OrganizationCopyWith<$Res> {
  _$OrganizationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Organization
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? displayName = null,
    Object? color = null,
    Object? ssoUrl = freezed,
    Object? customDomain = freezed,
    Object? widget = freezed,
    Object? settings = null,
    Object? postCategories = null,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      ssoUrl: freezed == ssoUrl
          ? _value.ssoUrl
          : ssoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      customDomain: freezed == customDomain
          ? _value.customDomain
          : customDomain // ignore: cast_nullable_to_non_nullable
              as String?,
      widget: freezed == widget
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as AIOWidget?,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as OrganizationSettings,
      postCategories: null == postCategories
          ? _value.postCategories
          : postCategories // ignore: cast_nullable_to_non_nullable
              as List<PostCategory>,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Organization
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AIOWidgetCopyWith<$Res>? get widget {
    if (_value.widget == null) {
      return null;
    }

    return $AIOWidgetCopyWith<$Res>(_value.widget!, (value) {
      return _then(_value.copyWith(widget: value) as $Val);
    });
  }

  /// Create a copy of Organization
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationSettingsCopyWith<$Res> get settings {
    return $OrganizationSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrganizationImplCopyWith<$Res>
    implements $OrganizationCopyWith<$Res> {
  factory _$$OrganizationImplCopyWith(
          _$OrganizationImpl value, $Res Function(_$OrganizationImpl) then) =
      __$$OrganizationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name', required: true) String name,
      @JsonKey(name: 'displayName', required: true) String displayName,
      @JsonKey(name: 'color', required: true) String color,
      @JsonKey(name: 'ssoUrl') String? ssoUrl,
      @JsonKey(name: 'customDomain') String? customDomain,
      @JsonKey(name: 'widget') AIOWidget? widget,
      @JsonKey(name: 'settings', required: true) OrganizationSettings settings,
      @JsonKey(name: 'postCategories', required: true)
      List<PostCategory> postCategories,
      @JsonKey(name: 'picture') String? picture});

  @override
  $AIOWidgetCopyWith<$Res>? get widget;
  @override
  $OrganizationSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$OrganizationImplCopyWithImpl<$Res>
    extends _$OrganizationCopyWithImpl<$Res, _$OrganizationImpl>
    implements _$$OrganizationImplCopyWith<$Res> {
  __$$OrganizationImplCopyWithImpl(
      _$OrganizationImpl _value, $Res Function(_$OrganizationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Organization
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? displayName = null,
    Object? color = null,
    Object? ssoUrl = freezed,
    Object? customDomain = freezed,
    Object? widget = freezed,
    Object? settings = null,
    Object? postCategories = null,
    Object? picture = freezed,
  }) {
    return _then(_$OrganizationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      ssoUrl: freezed == ssoUrl
          ? _value.ssoUrl
          : ssoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      customDomain: freezed == customDomain
          ? _value.customDomain
          : customDomain // ignore: cast_nullable_to_non_nullable
              as String?,
      widget: freezed == widget
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as AIOWidget?,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as OrganizationSettings,
      postCategories: null == postCategories
          ? _value._postCategories
          : postCategories // ignore: cast_nullable_to_non_nullable
              as List<PostCategory>,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizationImpl implements _Organization {
  const _$OrganizationImpl(
      {@JsonKey(name: 'name', required: true) required this.name,
      @JsonKey(name: 'displayName', required: true) required this.displayName,
      @JsonKey(name: 'color', required: true) required this.color,
      @JsonKey(name: 'ssoUrl') this.ssoUrl,
      @JsonKey(name: 'customDomain') this.customDomain,
      @JsonKey(name: 'widget') this.widget,
      @JsonKey(name: 'settings', required: true) required this.settings,
      @JsonKey(name: 'postCategories', required: true)
      required final List<PostCategory> postCategories,
      @JsonKey(name: 'picture') this.picture})
      : _postCategories = postCategories;

  factory _$OrganizationImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationImplFromJson(json);

  /// The name of the organization
  @override
  @JsonKey(name: 'name', required: true)
  final String name;

  /// The display name of the organization
  @override
  @JsonKey(name: 'displayName', required: true)
  final String displayName;

  /// Color hash code
  @override
  @JsonKey(name: 'color', required: true)
  final String color;

  /// SSO Url
  @override
  @JsonKey(name: 'ssoUrl')
  final String? ssoUrl;

  /// Custom domain
  @override
  @JsonKey(name: 'customDomain')
  final String? customDomain;

  /// The widgets of the organization
  @override
  @JsonKey(name: 'widget')
  final AIOWidget? widget;

  /// The settings of the organization
  @override
  @JsonKey(name: 'settings', required: true)
  final OrganizationSettings settings;

  /// The post categories of the organization
  final List<PostCategory> _postCategories;

  /// The post categories of the organization
  @override
  @JsonKey(name: 'postCategories', required: true)
  List<PostCategory> get postCategories {
    if (_postCategories is EqualUnmodifiableListView) return _postCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postCategories);
  }

  /// Picture url
  @override
  @JsonKey(name: 'picture')
  final String? picture;

  @override
  String toString() {
    return 'Organization(name: $name, displayName: $displayName, color: $color, ssoUrl: $ssoUrl, customDomain: $customDomain, widget: $widget, settings: $settings, postCategories: $postCategories, picture: $picture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.ssoUrl, ssoUrl) || other.ssoUrl == ssoUrl) &&
            (identical(other.customDomain, customDomain) ||
                other.customDomain == customDomain) &&
            (identical(other.widget, widget) || other.widget == widget) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            const DeepCollectionEquality()
                .equals(other._postCategories, _postCategories) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      displayName,
      color,
      ssoUrl,
      customDomain,
      widget,
      settings,
      const DeepCollectionEquality().hash(_postCategories),
      picture);

  /// Create a copy of Organization
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationImplCopyWith<_$OrganizationImpl> get copyWith =>
      __$$OrganizationImplCopyWithImpl<_$OrganizationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationImplToJson(
      this,
    );
  }
}

abstract class _Organization implements Organization {
  const factory _Organization(
      {@JsonKey(name: 'name', required: true) required final String name,
      @JsonKey(name: 'displayName', required: true)
      required final String displayName,
      @JsonKey(name: 'color', required: true) required final String color,
      @JsonKey(name: 'ssoUrl') final String? ssoUrl,
      @JsonKey(name: 'customDomain') final String? customDomain,
      @JsonKey(name: 'widget') final AIOWidget? widget,
      @JsonKey(name: 'settings', required: true)
      required final OrganizationSettings settings,
      @JsonKey(name: 'postCategories', required: true)
      required final List<PostCategory> postCategories,
      @JsonKey(name: 'picture') final String? picture}) = _$OrganizationImpl;

  factory _Organization.fromJson(Map<String, dynamic> json) =
      _$OrganizationImpl.fromJson;

  /// The name of the organization
  @override
  @JsonKey(name: 'name', required: true)
  String get name;

  /// The display name of the organization
  @override
  @JsonKey(name: 'displayName', required: true)
  String get displayName;

  /// Color hash code
  @override
  @JsonKey(name: 'color', required: true)
  String get color;

  /// SSO Url
  @override
  @JsonKey(name: 'ssoUrl')
  String? get ssoUrl;

  /// Custom domain
  @override
  @JsonKey(name: 'customDomain')
  String? get customDomain;

  /// The widgets of the organization
  @override
  @JsonKey(name: 'widget')
  AIOWidget? get widget;

  /// The settings of the organization
  @override
  @JsonKey(name: 'settings', required: true)
  OrganizationSettings get settings;

  /// The post categories of the organization
  @override
  @JsonKey(name: 'postCategories', required: true)
  List<PostCategory> get postCategories;

  /// Picture url
  @override
  @JsonKey(name: 'picture')
  String? get picture;

  /// Create a copy of Organization
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizationImplCopyWith<_$OrganizationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AIOWidget _$AIOWidgetFromJson(Map<String, dynamic> json) {
  return _AIOWidget.fromJson(json);
}

/// @nodoc
mixin _$AIOWidget {
  /// The title of the widget
  @JsonKey(name: 'title', required: true)
  String get title => throw _privateConstructorUsedError;

  /// The description of the widget
  @JsonKey(name: 'description', required: true)
  String get description => throw _privateConstructorUsedError;

  /// The cards of the widget
  @JsonKey(name: 'cards', required: true)
  List<AIOCard> get cards => throw _privateConstructorUsedError;

  /// Serializes this AIOWidget to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AIOWidget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AIOWidgetCopyWith<AIOWidget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AIOWidgetCopyWith<$Res> {
  factory $AIOWidgetCopyWith(AIOWidget value, $Res Function(AIOWidget) then) =
      _$AIOWidgetCopyWithImpl<$Res, AIOWidget>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title', required: true) String title,
      @JsonKey(name: 'description', required: true) String description,
      @JsonKey(name: 'cards', required: true) List<AIOCard> cards});
}

/// @nodoc
class _$AIOWidgetCopyWithImpl<$Res, $Val extends AIOWidget>
    implements $AIOWidgetCopyWith<$Res> {
  _$AIOWidgetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AIOWidget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? cards = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<AIOCard>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AIOWidgetImplCopyWith<$Res>
    implements $AIOWidgetCopyWith<$Res> {
  factory _$$AIOWidgetImplCopyWith(
          _$AIOWidgetImpl value, $Res Function(_$AIOWidgetImpl) then) =
      __$$AIOWidgetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title', required: true) String title,
      @JsonKey(name: 'description', required: true) String description,
      @JsonKey(name: 'cards', required: true) List<AIOCard> cards});
}

/// @nodoc
class __$$AIOWidgetImplCopyWithImpl<$Res>
    extends _$AIOWidgetCopyWithImpl<$Res, _$AIOWidgetImpl>
    implements _$$AIOWidgetImplCopyWith<$Res> {
  __$$AIOWidgetImplCopyWithImpl(
      _$AIOWidgetImpl _value, $Res Function(_$AIOWidgetImpl) _then)
      : super(_value, _then);

  /// Create a copy of AIOWidget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? cards = null,
  }) {
    return _then(_$AIOWidgetImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<AIOCard>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AIOWidgetImpl implements _AIOWidget {
  const _$AIOWidgetImpl(
      {@JsonKey(name: 'title', required: true) required this.title,
      @JsonKey(name: 'description', required: true) required this.description,
      @JsonKey(name: 'cards', required: true)
      required final List<AIOCard> cards})
      : _cards = cards;

  factory _$AIOWidgetImpl.fromJson(Map<String, dynamic> json) =>
      _$$AIOWidgetImplFromJson(json);

  /// The title of the widget
  @override
  @JsonKey(name: 'title', required: true)
  final String title;

  /// The description of the widget
  @override
  @JsonKey(name: 'description', required: true)
  final String description;

  /// The cards of the widget
  final List<AIOCard> _cards;

  /// The cards of the widget
  @override
  @JsonKey(name: 'cards', required: true)
  List<AIOCard> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'AIOWidget(title: $title, description: $description, cards: $cards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AIOWidgetImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description,
      const DeepCollectionEquality().hash(_cards));

  /// Create a copy of AIOWidget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AIOWidgetImplCopyWith<_$AIOWidgetImpl> get copyWith =>
      __$$AIOWidgetImplCopyWithImpl<_$AIOWidgetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AIOWidgetImplToJson(
      this,
    );
  }
}

abstract class _AIOWidget implements AIOWidget {
  const factory _AIOWidget(
      {@JsonKey(name: 'title', required: true) required final String title,
      @JsonKey(name: 'description', required: true)
      required final String description,
      @JsonKey(name: 'cards', required: true)
      required final List<AIOCard> cards}) = _$AIOWidgetImpl;

  factory _AIOWidget.fromJson(Map<String, dynamic> json) =
      _$AIOWidgetImpl.fromJson;

  /// The title of the widget
  @override
  @JsonKey(name: 'title', required: true)
  String get title;

  /// The description of the widget
  @override
  @JsonKey(name: 'description', required: true)
  String get description;

  /// The cards of the widget
  @override
  @JsonKey(name: 'cards', required: true)
  List<AIOCard> get cards;

  /// Create a copy of AIOWidget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AIOWidgetImplCopyWith<_$AIOWidgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AIOCard _$AIOCardFromJson(Map<String, dynamic> json) {
  return _AIOCard.fromJson(json);
}

/// @nodoc
mixin _$AIOCard {
  /// The title of the card
  @JsonKey(name: 'title', required: true)
  String get title => throw _privateConstructorUsedError;

  /// The description of the card
  @JsonKey(name: 'description', required: true)
  String get description => throw _privateConstructorUsedError;

  /// The category of the card
  @JsonKey(name: 'category', required: true)
  String get category => throw _privateConstructorUsedError;

  /// Serializes this AIOCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AIOCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AIOCardCopyWith<AIOCard> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AIOCardCopyWith<$Res> {
  factory $AIOCardCopyWith(AIOCard value, $Res Function(AIOCard) then) =
      _$AIOCardCopyWithImpl<$Res, AIOCard>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title', required: true) String title,
      @JsonKey(name: 'description', required: true) String description,
      @JsonKey(name: 'category', required: true) String category});
}

/// @nodoc
class _$AIOCardCopyWithImpl<$Res, $Val extends AIOCard>
    implements $AIOCardCopyWith<$Res> {
  _$AIOCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AIOCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AIOCardImplCopyWith<$Res> implements $AIOCardCopyWith<$Res> {
  factory _$$AIOCardImplCopyWith(
          _$AIOCardImpl value, $Res Function(_$AIOCardImpl) then) =
      __$$AIOCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title', required: true) String title,
      @JsonKey(name: 'description', required: true) String description,
      @JsonKey(name: 'category', required: true) String category});
}

/// @nodoc
class __$$AIOCardImplCopyWithImpl<$Res>
    extends _$AIOCardCopyWithImpl<$Res, _$AIOCardImpl>
    implements _$$AIOCardImplCopyWith<$Res> {
  __$$AIOCardImplCopyWithImpl(
      _$AIOCardImpl _value, $Res Function(_$AIOCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of AIOCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? category = null,
  }) {
    return _then(_$AIOCardImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AIOCardImpl implements _AIOCard {
  const _$AIOCardImpl(
      {@JsonKey(name: 'title', required: true) required this.title,
      @JsonKey(name: 'description', required: true) required this.description,
      @JsonKey(name: 'category', required: true) required this.category});

  factory _$AIOCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$AIOCardImplFromJson(json);

  /// The title of the card
  @override
  @JsonKey(name: 'title', required: true)
  final String title;

  /// The description of the card
  @override
  @JsonKey(name: 'description', required: true)
  final String description;

  /// The category of the card
  @override
  @JsonKey(name: 'category', required: true)
  final String category;

  @override
  String toString() {
    return 'AIOCard(title: $title, description: $description, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AIOCardImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, category);

  /// Create a copy of AIOCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AIOCardImplCopyWith<_$AIOCardImpl> get copyWith =>
      __$$AIOCardImplCopyWithImpl<_$AIOCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AIOCardImplToJson(
      this,
    );
  }
}

abstract class _AIOCard implements AIOCard {
  const factory _AIOCard(
      {@JsonKey(name: 'title', required: true) required final String title,
      @JsonKey(name: 'description', required: true)
      required final String description,
      @JsonKey(name: 'category', required: true)
      required final String category}) = _$AIOCardImpl;

  factory _AIOCard.fromJson(Map<String, dynamic> json) = _$AIOCardImpl.fromJson;

  /// The title of the card
  @override
  @JsonKey(name: 'title', required: true)
  String get title;

  /// The description of the card
  @override
  @JsonKey(name: 'description', required: true)
  String get description;

  /// The category of the card
  @override
  @JsonKey(name: 'category', required: true)
  String get category;

  /// Create a copy of AIOCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AIOCardImplCopyWith<_$AIOCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrganizationSettings _$OrganizationSettingsFromJson(Map<String, dynamic> json) {
  return _OrganizationSettings.fromJson(json);
}

/// @nodoc
mixin _$OrganizationSettings {
  /// Downvotes feature enabled
  @JsonKey(name: 'downvotesEnabled', defaultValue: false)
  bool get downvotesEnabled => throw _privateConstructorUsedError;

  /// Default sorting order of posts
  @JsonKey(name: 'defaultSortingOrder', required: true)
  String get defaultSortingOrder => throw _privateConstructorUsedError;

  /// Hide vote counts until voted
  @JsonKey(name: 'hideVoteCountUntilVoted', defaultValue: false)
  bool get hideVoteCountUntilVoted => throw _privateConstructorUsedError;

  /// Serializes this OrganizationSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrganizationSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizationSettingsCopyWith<OrganizationSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationSettingsCopyWith<$Res> {
  factory $OrganizationSettingsCopyWith(OrganizationSettings value,
          $Res Function(OrganizationSettings) then) =
      _$OrganizationSettingsCopyWithImpl<$Res, OrganizationSettings>;
  @useResult
  $Res call(
      {@JsonKey(name: 'downvotesEnabled', defaultValue: false)
      bool downvotesEnabled,
      @JsonKey(name: 'defaultSortingOrder', required: true)
      String defaultSortingOrder,
      @JsonKey(name: 'hideVoteCountUntilVoted', defaultValue: false)
      bool hideVoteCountUntilVoted});
}

/// @nodoc
class _$OrganizationSettingsCopyWithImpl<$Res,
        $Val extends OrganizationSettings>
    implements $OrganizationSettingsCopyWith<$Res> {
  _$OrganizationSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrganizationSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downvotesEnabled = null,
    Object? defaultSortingOrder = null,
    Object? hideVoteCountUntilVoted = null,
  }) {
    return _then(_value.copyWith(
      downvotesEnabled: null == downvotesEnabled
          ? _value.downvotesEnabled
          : downvotesEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultSortingOrder: null == defaultSortingOrder
          ? _value.defaultSortingOrder
          : defaultSortingOrder // ignore: cast_nullable_to_non_nullable
              as String,
      hideVoteCountUntilVoted: null == hideVoteCountUntilVoted
          ? _value.hideVoteCountUntilVoted
          : hideVoteCountUntilVoted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrganizationSettingsImplCopyWith<$Res>
    implements $OrganizationSettingsCopyWith<$Res> {
  factory _$$OrganizationSettingsImplCopyWith(_$OrganizationSettingsImpl value,
          $Res Function(_$OrganizationSettingsImpl) then) =
      __$$OrganizationSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'downvotesEnabled', defaultValue: false)
      bool downvotesEnabled,
      @JsonKey(name: 'defaultSortingOrder', required: true)
      String defaultSortingOrder,
      @JsonKey(name: 'hideVoteCountUntilVoted', defaultValue: false)
      bool hideVoteCountUntilVoted});
}

/// @nodoc
class __$$OrganizationSettingsImplCopyWithImpl<$Res>
    extends _$OrganizationSettingsCopyWithImpl<$Res, _$OrganizationSettingsImpl>
    implements _$$OrganizationSettingsImplCopyWith<$Res> {
  __$$OrganizationSettingsImplCopyWithImpl(_$OrganizationSettingsImpl _value,
      $Res Function(_$OrganizationSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrganizationSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downvotesEnabled = null,
    Object? defaultSortingOrder = null,
    Object? hideVoteCountUntilVoted = null,
  }) {
    return _then(_$OrganizationSettingsImpl(
      downvotesEnabled: null == downvotesEnabled
          ? _value.downvotesEnabled
          : downvotesEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultSortingOrder: null == defaultSortingOrder
          ? _value.defaultSortingOrder
          : defaultSortingOrder // ignore: cast_nullable_to_non_nullable
              as String,
      hideVoteCountUntilVoted: null == hideVoteCountUntilVoted
          ? _value.hideVoteCountUntilVoted
          : hideVoteCountUntilVoted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizationSettingsImpl implements _OrganizationSettings {
  const _$OrganizationSettingsImpl(
      {@JsonKey(name: 'downvotesEnabled', defaultValue: false)
      this.downvotesEnabled = false,
      @JsonKey(name: 'defaultSortingOrder', required: true)
      required this.defaultSortingOrder,
      @JsonKey(name: 'hideVoteCountUntilVoted', defaultValue: false)
      this.hideVoteCountUntilVoted = false});

  factory _$OrganizationSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationSettingsImplFromJson(json);

  /// Downvotes feature enabled
  @override
  @JsonKey(name: 'downvotesEnabled', defaultValue: false)
  final bool downvotesEnabled;

  /// Default sorting order of posts
  @override
  @JsonKey(name: 'defaultSortingOrder', required: true)
  final String defaultSortingOrder;

  /// Hide vote counts until voted
  @override
  @JsonKey(name: 'hideVoteCountUntilVoted', defaultValue: false)
  final bool hideVoteCountUntilVoted;

  @override
  String toString() {
    return 'OrganizationSettings(downvotesEnabled: $downvotesEnabled, defaultSortingOrder: $defaultSortingOrder, hideVoteCountUntilVoted: $hideVoteCountUntilVoted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationSettingsImpl &&
            (identical(other.downvotesEnabled, downvotesEnabled) ||
                other.downvotesEnabled == downvotesEnabled) &&
            (identical(other.defaultSortingOrder, defaultSortingOrder) ||
                other.defaultSortingOrder == defaultSortingOrder) &&
            (identical(
                    other.hideVoteCountUntilVoted, hideVoteCountUntilVoted) ||
                other.hideVoteCountUntilVoted == hideVoteCountUntilVoted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, downvotesEnabled,
      defaultSortingOrder, hideVoteCountUntilVoted);

  /// Create a copy of OrganizationSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationSettingsImplCopyWith<_$OrganizationSettingsImpl>
      get copyWith =>
          __$$OrganizationSettingsImplCopyWithImpl<_$OrganizationSettingsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationSettingsImplToJson(
      this,
    );
  }
}

abstract class _OrganizationSettings implements OrganizationSettings {
  const factory _OrganizationSettings(
      {@JsonKey(name: 'downvotesEnabled', defaultValue: false)
      final bool downvotesEnabled,
      @JsonKey(name: 'defaultSortingOrder', required: true)
      required final String defaultSortingOrder,
      @JsonKey(name: 'hideVoteCountUntilVoted', defaultValue: false)
      final bool hideVoteCountUntilVoted}) = _$OrganizationSettingsImpl;

  factory _OrganizationSettings.fromJson(Map<String, dynamic> json) =
      _$OrganizationSettingsImpl.fromJson;

  /// Downvotes feature enabled
  @override
  @JsonKey(name: 'downvotesEnabled', defaultValue: false)
  bool get downvotesEnabled;

  /// Default sorting order of posts
  @override
  @JsonKey(name: 'defaultSortingOrder', required: true)
  String get defaultSortingOrder;

  /// Hide vote counts until voted
  @override
  @JsonKey(name: 'hideVoteCountUntilVoted', defaultValue: false)
  bool get hideVoteCountUntilVoted;

  /// Create a copy of OrganizationSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizationSettingsImplCopyWith<_$OrganizationSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserActivity _$UserActivityFromJson(Map<String, dynamic> json) {
  return _UserActivity.fromJson(json);
}

/// @nodoc
mixin _$UserActivity {
  /// The type of the user activity
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;

  /// The submission id
  @JsonKey(name: 'submissionId')
  String get submissionId => throw _privateConstructorUsedError;

  /// The created at date
  @JsonKey(name: 'createdAt')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// The submission
  @JsonKey(name: 'submission')
  UserActivitySubmission get submission => throw _privateConstructorUsedError;

  /// The comment
  @JsonKey(name: 'comment')
  UserActivityComment? get comment => throw _privateConstructorUsedError;

  /// Serializes this UserActivity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserActivity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserActivityCopyWith<UserActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserActivityCopyWith<$Res> {
  factory $UserActivityCopyWith(
          UserActivity value, $Res Function(UserActivity) then) =
      _$UserActivityCopyWithImpl<$Res, UserActivity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'submissionId') String submissionId,
      @JsonKey(name: 'createdAt') DateTime createdAt,
      @JsonKey(name: 'submission') UserActivitySubmission submission,
      @JsonKey(name: 'comment') UserActivityComment? comment});

  $UserActivitySubmissionCopyWith<$Res> get submission;
  $UserActivityCommentCopyWith<$Res>? get comment;
}

/// @nodoc
class _$UserActivityCopyWithImpl<$Res, $Val extends UserActivity>
    implements $UserActivityCopyWith<$Res> {
  _$UserActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserActivity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? submissionId = null,
    Object? createdAt = null,
    Object? submission = null,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      submissionId: null == submissionId
          ? _value.submissionId
          : submissionId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      submission: null == submission
          ? _value.submission
          : submission // ignore: cast_nullable_to_non_nullable
              as UserActivitySubmission,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as UserActivityComment?,
    ) as $Val);
  }

  /// Create a copy of UserActivity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserActivitySubmissionCopyWith<$Res> get submission {
    return $UserActivitySubmissionCopyWith<$Res>(_value.submission, (value) {
      return _then(_value.copyWith(submission: value) as $Val);
    });
  }

  /// Create a copy of UserActivity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserActivityCommentCopyWith<$Res>? get comment {
    if (_value.comment == null) {
      return null;
    }

    return $UserActivityCommentCopyWith<$Res>(_value.comment!, (value) {
      return _then(_value.copyWith(comment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserActivityImplCopyWith<$Res>
    implements $UserActivityCopyWith<$Res> {
  factory _$$UserActivityImplCopyWith(
          _$UserActivityImpl value, $Res Function(_$UserActivityImpl) then) =
      __$$UserActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'submissionId') String submissionId,
      @JsonKey(name: 'createdAt') DateTime createdAt,
      @JsonKey(name: 'submission') UserActivitySubmission submission,
      @JsonKey(name: 'comment') UserActivityComment? comment});

  @override
  $UserActivitySubmissionCopyWith<$Res> get submission;
  @override
  $UserActivityCommentCopyWith<$Res>? get comment;
}

/// @nodoc
class __$$UserActivityImplCopyWithImpl<$Res>
    extends _$UserActivityCopyWithImpl<$Res, _$UserActivityImpl>
    implements _$$UserActivityImplCopyWith<$Res> {
  __$$UserActivityImplCopyWithImpl(
      _$UserActivityImpl _value, $Res Function(_$UserActivityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserActivity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? submissionId = null,
    Object? createdAt = null,
    Object? submission = null,
    Object? comment = freezed,
  }) {
    return _then(_$UserActivityImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      submissionId: null == submissionId
          ? _value.submissionId
          : submissionId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      submission: null == submission
          ? _value.submission
          : submission // ignore: cast_nullable_to_non_nullable
              as UserActivitySubmission,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as UserActivityComment?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserActivityImpl implements _UserActivity {
  const _$UserActivityImpl(
      {@JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'submissionId') required this.submissionId,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'submission') required this.submission,
      @JsonKey(name: 'comment') this.comment});

  factory _$UserActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserActivityImplFromJson(json);

  /// The type of the user activity
  @override
  @JsonKey(name: 'type')
  final String type;

  /// The submission id
  @override
  @JsonKey(name: 'submissionId')
  final String submissionId;

  /// The created at date
  @override
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;

  /// The submission
  @override
  @JsonKey(name: 'submission')
  final UserActivitySubmission submission;

  /// The comment
  @override
  @JsonKey(name: 'comment')
  final UserActivityComment? comment;

  @override
  String toString() {
    return 'UserActivity(type: $type, submissionId: $submissionId, createdAt: $createdAt, submission: $submission, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserActivityImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.submissionId, submissionId) ||
                other.submissionId == submissionId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.submission, submission) ||
                other.submission == submission) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, submissionId, createdAt, submission, comment);

  /// Create a copy of UserActivity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserActivityImplCopyWith<_$UserActivityImpl> get copyWith =>
      __$$UserActivityImplCopyWithImpl<_$UserActivityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserActivityImplToJson(
      this,
    );
  }
}

abstract class _UserActivity implements UserActivity {
  const factory _UserActivity(
          {@JsonKey(name: 'type') required final String type,
          @JsonKey(name: 'submissionId') required final String submissionId,
          @JsonKey(name: 'createdAt') required final DateTime createdAt,
          @JsonKey(name: 'submission')
          required final UserActivitySubmission submission,
          @JsonKey(name: 'comment') final UserActivityComment? comment}) =
      _$UserActivityImpl;

  factory _UserActivity.fromJson(Map<String, dynamic> json) =
      _$UserActivityImpl.fromJson;

  /// The type of the user activity
  @override
  @JsonKey(name: 'type')
  String get type;

  /// The submission id
  @override
  @JsonKey(name: 'submissionId')
  String get submissionId;

  /// The created at date
  @override
  @JsonKey(name: 'createdAt')
  DateTime get createdAt;

  /// The submission
  @override
  @JsonKey(name: 'submission')
  UserActivitySubmission get submission;

  /// The comment
  @override
  @JsonKey(name: 'comment')
  UserActivityComment? get comment;

  /// Create a copy of UserActivity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserActivityImplCopyWith<_$UserActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserActivitySubmission _$UserActivitySubmissionFromJson(
    Map<String, dynamic> json) {
  return _UserActivitySubmission.fromJson(json);
}

/// @nodoc
mixin _$UserActivitySubmission {
  /// The title of the submission
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// The submission content
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;

  /// Serializes this UserActivitySubmission to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserActivitySubmission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserActivitySubmissionCopyWith<UserActivitySubmission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserActivitySubmissionCopyWith<$Res> {
  factory $UserActivitySubmissionCopyWith(UserActivitySubmission value,
          $Res Function(UserActivitySubmission) then) =
      _$UserActivitySubmissionCopyWithImpl<$Res, UserActivitySubmission>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'content') String content});
}

/// @nodoc
class _$UserActivitySubmissionCopyWithImpl<$Res,
        $Val extends UserActivitySubmission>
    implements $UserActivitySubmissionCopyWith<$Res> {
  _$UserActivitySubmissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserActivitySubmission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserActivitySubmissionImplCopyWith<$Res>
    implements $UserActivitySubmissionCopyWith<$Res> {
  factory _$$UserActivitySubmissionImplCopyWith(
          _$UserActivitySubmissionImpl value,
          $Res Function(_$UserActivitySubmissionImpl) then) =
      __$$UserActivitySubmissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'content') String content});
}

/// @nodoc
class __$$UserActivitySubmissionImplCopyWithImpl<$Res>
    extends _$UserActivitySubmissionCopyWithImpl<$Res,
        _$UserActivitySubmissionImpl>
    implements _$$UserActivitySubmissionImplCopyWith<$Res> {
  __$$UserActivitySubmissionImplCopyWithImpl(
      _$UserActivitySubmissionImpl _value,
      $Res Function(_$UserActivitySubmissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserActivitySubmission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$UserActivitySubmissionImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserActivitySubmissionImpl implements _UserActivitySubmission {
  const _$UserActivitySubmissionImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'content') required this.content});

  factory _$UserActivitySubmissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserActivitySubmissionImplFromJson(json);

  /// The title of the submission
  @override
  @JsonKey(name: 'title')
  final String title;

  /// The submission content
  @override
  @JsonKey(name: 'content')
  final String content;

  @override
  String toString() {
    return 'UserActivitySubmission(title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserActivitySubmissionImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  /// Create a copy of UserActivitySubmission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserActivitySubmissionImplCopyWith<_$UserActivitySubmissionImpl>
      get copyWith => __$$UserActivitySubmissionImplCopyWithImpl<
          _$UserActivitySubmissionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserActivitySubmissionImplToJson(
      this,
    );
  }
}

abstract class _UserActivitySubmission implements UserActivitySubmission {
  const factory _UserActivitySubmission(
          {@JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'content') required final String content}) =
      _$UserActivitySubmissionImpl;

  factory _UserActivitySubmission.fromJson(Map<String, dynamic> json) =
      _$UserActivitySubmissionImpl.fromJson;

  /// The title of the submission
  @override
  @JsonKey(name: 'title')
  String get title;

  /// The submission content
  @override
  @JsonKey(name: 'content')
  String get content;

  /// Create a copy of UserActivitySubmission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserActivitySubmissionImplCopyWith<_$UserActivitySubmissionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserActivityComment _$UserActivityCommentFromJson(Map<String, dynamic> json) {
  return _UserActivityComment.fromJson(json);
}

/// @nodoc
mixin _$UserActivityComment {
  /// The comment content
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;

  /// Serializes this UserActivityComment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserActivityComment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserActivityCommentCopyWith<UserActivityComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserActivityCommentCopyWith<$Res> {
  factory $UserActivityCommentCopyWith(
          UserActivityComment value, $Res Function(UserActivityComment) then) =
      _$UserActivityCommentCopyWithImpl<$Res, UserActivityComment>;
  @useResult
  $Res call({@JsonKey(name: 'content') String content});
}

/// @nodoc
class _$UserActivityCommentCopyWithImpl<$Res, $Val extends UserActivityComment>
    implements $UserActivityCommentCopyWith<$Res> {
  _$UserActivityCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserActivityComment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserActivityCommentImplCopyWith<$Res>
    implements $UserActivityCommentCopyWith<$Res> {
  factory _$$UserActivityCommentImplCopyWith(_$UserActivityCommentImpl value,
          $Res Function(_$UserActivityCommentImpl) then) =
      __$$UserActivityCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'content') String content});
}

/// @nodoc
class __$$UserActivityCommentImplCopyWithImpl<$Res>
    extends _$UserActivityCommentCopyWithImpl<$Res, _$UserActivityCommentImpl>
    implements _$$UserActivityCommentImplCopyWith<$Res> {
  __$$UserActivityCommentImplCopyWithImpl(_$UserActivityCommentImpl _value,
      $Res Function(_$UserActivityCommentImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserActivityComment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$UserActivityCommentImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserActivityCommentImpl implements _UserActivityComment {
  const _$UserActivityCommentImpl(
      {@JsonKey(name: 'content') required this.content});

  factory _$UserActivityCommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserActivityCommentImplFromJson(json);

  /// The comment content
  @override
  @JsonKey(name: 'content')
  final String content;

  @override
  String toString() {
    return 'UserActivityComment(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserActivityCommentImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of UserActivityComment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserActivityCommentImplCopyWith<_$UserActivityCommentImpl> get copyWith =>
      __$$UserActivityCommentImplCopyWithImpl<_$UserActivityCommentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserActivityCommentImplToJson(
      this,
    );
  }
}

abstract class _UserActivityComment implements UserActivityComment {
  const factory _UserActivityComment(
          {@JsonKey(name: 'content') required final String content}) =
      _$UserActivityCommentImpl;

  factory _UserActivityComment.fromJson(Map<String, dynamic> json) =
      _$UserActivityCommentImpl.fromJson;

  /// The comment content
  @override
  @JsonKey(name: 'content')
  String get content;

  /// Create a copy of UserActivityComment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserActivityCommentImplCopyWith<_$UserActivityCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  /// The id of the post
  @JsonKey(name: 'id', required: true)
  String get id => throw _privateConstructorUsedError;

  /// The slug of the post
  @JsonKey(name: 'slug', required: true)
  String get slug => throw _privateConstructorUsedError;

  /// The title of the post
  @JsonKey(name: 'title', required: true)
  String get title => throw _privateConstructorUsedError;

  /// The content of the post
  @JsonKey(name: 'content', required: true)
  String get content => throw _privateConstructorUsedError;

  /// The user who created the post
  @JsonKey(name: 'user', required: true)
  UserSimple get user => throw _privateConstructorUsedError;

  /// The status of the post
  @JsonKey(name: 'postStatus', required: true)
  PostStatus get status => throw _privateConstructorUsedError;

  /// Post upvotes
  @JsonKey(name: 'upvotes', defaultValue: 0)
  int get upvotes => throw _privateConstructorUsedError;

  /// Post comment count
  @JsonKey(name: 'commentCount', defaultValue: 0)
  int get commentCount => throw _privateConstructorUsedError;

  /// Whether the user has upvoted the post (false by default)
  @JsonKey(name: 'upvoted', defaultValue: false)
  bool get upvoted => throw _privateConstructorUsedError;

  /// Whether the user has downvoted the post (false by default)
  @JsonKey(name: 'downvoted', defaultValue: false)
  bool get downvoted => throw _privateConstructorUsedError;

  /// Whether the post is pinned (false by default)
  @JsonKey(name: 'pinned', defaultValue: false)
  bool get pinned => throw _privateConstructorUsedError;

  /// Whether the user is subscribed to the post (false by default)
  @JsonKey(name: 'isSubscribed', defaultValue: false)
  bool get isSubscribed => throw _privateConstructorUsedError;

  /// Date the post was created
  @JsonKey(name: 'date', required: true)
  DateTime get date => throw _privateConstructorUsedError;

  /// Date the post was last updated
  @JsonKey(name: 'lastModified', required: true)
  DateTime get lastModified => throw _privateConstructorUsedError;

  /// The category of the post
  @JsonKey(name: 'postCategory', required: true)
  PostCategory get postCategory => throw _privateConstructorUsedError;

  /// Serializes this Post to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true) String id,
      @JsonKey(name: 'slug', required: true) String slug,
      @JsonKey(name: 'title', required: true) String title,
      @JsonKey(name: 'content', required: true) String content,
      @JsonKey(name: 'user', required: true) UserSimple user,
      @JsonKey(name: 'postStatus', required: true) PostStatus status,
      @JsonKey(name: 'upvotes', defaultValue: 0) int upvotes,
      @JsonKey(name: 'commentCount', defaultValue: 0) int commentCount,
      @JsonKey(name: 'upvoted', defaultValue: false) bool upvoted,
      @JsonKey(name: 'downvoted', defaultValue: false) bool downvoted,
      @JsonKey(name: 'pinned', defaultValue: false) bool pinned,
      @JsonKey(name: 'isSubscribed', defaultValue: false) bool isSubscribed,
      @JsonKey(name: 'date', required: true) DateTime date,
      @JsonKey(name: 'lastModified', required: true) DateTime lastModified,
      @JsonKey(name: 'postCategory', required: true)
      PostCategory postCategory});

  $UserSimpleCopyWith<$Res> get user;
  $PostStatusCopyWith<$Res> get status;
  $PostCategoryCopyWith<$Res> get postCategory;
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? title = null,
    Object? content = null,
    Object? user = null,
    Object? status = null,
    Object? upvotes = null,
    Object? commentCount = null,
    Object? upvoted = null,
    Object? downvoted = null,
    Object? pinned = null,
    Object? isSubscribed = null,
    Object? date = null,
    Object? lastModified = null,
    Object? postCategory = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserSimple,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PostStatus,
      upvotes: null == upvotes
          ? _value.upvotes
          : upvotes // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      upvoted: null == upvoted
          ? _value.upvoted
          : upvoted // ignore: cast_nullable_to_non_nullable
              as bool,
      downvoted: null == downvoted
          ? _value.downvoted
          : downvoted // ignore: cast_nullable_to_non_nullable
              as bool,
      pinned: null == pinned
          ? _value.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime,
      postCategory: null == postCategory
          ? _value.postCategory
          : postCategory // ignore: cast_nullable_to_non_nullable
              as PostCategory,
    ) as $Val);
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserSimpleCopyWith<$Res> get user {
    return $UserSimpleCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostStatusCopyWith<$Res> get status {
    return $PostStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostCategoryCopyWith<$Res> get postCategory {
    return $PostCategoryCopyWith<$Res>(_value.postCategory, (value) {
      return _then(_value.copyWith(postCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true) String id,
      @JsonKey(name: 'slug', required: true) String slug,
      @JsonKey(name: 'title', required: true) String title,
      @JsonKey(name: 'content', required: true) String content,
      @JsonKey(name: 'user', required: true) UserSimple user,
      @JsonKey(name: 'postStatus', required: true) PostStatus status,
      @JsonKey(name: 'upvotes', defaultValue: 0) int upvotes,
      @JsonKey(name: 'commentCount', defaultValue: 0) int commentCount,
      @JsonKey(name: 'upvoted', defaultValue: false) bool upvoted,
      @JsonKey(name: 'downvoted', defaultValue: false) bool downvoted,
      @JsonKey(name: 'pinned', defaultValue: false) bool pinned,
      @JsonKey(name: 'isSubscribed', defaultValue: false) bool isSubscribed,
      @JsonKey(name: 'date', required: true) DateTime date,
      @JsonKey(name: 'lastModified', required: true) DateTime lastModified,
      @JsonKey(name: 'postCategory', required: true)
      PostCategory postCategory});

  @override
  $UserSimpleCopyWith<$Res> get user;
  @override
  $PostStatusCopyWith<$Res> get status;
  @override
  $PostCategoryCopyWith<$Res> get postCategory;
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? title = null,
    Object? content = null,
    Object? user = null,
    Object? status = null,
    Object? upvotes = null,
    Object? commentCount = null,
    Object? upvoted = null,
    Object? downvoted = null,
    Object? pinned = null,
    Object? isSubscribed = null,
    Object? date = null,
    Object? lastModified = null,
    Object? postCategory = null,
  }) {
    return _then(_$PostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserSimple,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PostStatus,
      upvotes: null == upvotes
          ? _value.upvotes
          : upvotes // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      upvoted: null == upvoted
          ? _value.upvoted
          : upvoted // ignore: cast_nullable_to_non_nullable
              as bool,
      downvoted: null == downvoted
          ? _value.downvoted
          : downvoted // ignore: cast_nullable_to_non_nullable
              as bool,
      pinned: null == pinned
          ? _value.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime,
      postCategory: null == postCategory
          ? _value.postCategory
          : postCategory // ignore: cast_nullable_to_non_nullable
              as PostCategory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl implements _Post {
  const _$PostImpl(
      {@JsonKey(name: 'id', required: true) required this.id,
      @JsonKey(name: 'slug', required: true) required this.slug,
      @JsonKey(name: 'title', required: true) required this.title,
      @JsonKey(name: 'content', required: true) required this.content,
      @JsonKey(name: 'user', required: true) required this.user,
      @JsonKey(name: 'postStatus', required: true) required this.status,
      @JsonKey(name: 'upvotes', defaultValue: 0) this.upvotes = 0,
      @JsonKey(name: 'commentCount', defaultValue: 0) this.commentCount = 0,
      @JsonKey(name: 'upvoted', defaultValue: false) this.upvoted = false,
      @JsonKey(name: 'downvoted', defaultValue: false) this.downvoted = false,
      @JsonKey(name: 'pinned', defaultValue: false) this.pinned = false,
      @JsonKey(name: 'isSubscribed', defaultValue: false)
      this.isSubscribed = false,
      @JsonKey(name: 'date', required: true) required this.date,
      @JsonKey(name: 'lastModified', required: true) required this.lastModified,
      @JsonKey(name: 'postCategory', required: true)
      required this.postCategory});

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  /// The id of the post
  @override
  @JsonKey(name: 'id', required: true)
  final String id;

  /// The slug of the post
  @override
  @JsonKey(name: 'slug', required: true)
  final String slug;

  /// The title of the post
  @override
  @JsonKey(name: 'title', required: true)
  final String title;

  /// The content of the post
  @override
  @JsonKey(name: 'content', required: true)
  final String content;

  /// The user who created the post
  @override
  @JsonKey(name: 'user', required: true)
  final UserSimple user;

  /// The status of the post
  @override
  @JsonKey(name: 'postStatus', required: true)
  final PostStatus status;

  /// Post upvotes
  @override
  @JsonKey(name: 'upvotes', defaultValue: 0)
  final int upvotes;

  /// Post comment count
  @override
  @JsonKey(name: 'commentCount', defaultValue: 0)
  final int commentCount;

  /// Whether the user has upvoted the post (false by default)
  @override
  @JsonKey(name: 'upvoted', defaultValue: false)
  final bool upvoted;

  /// Whether the user has downvoted the post (false by default)
  @override
  @JsonKey(name: 'downvoted', defaultValue: false)
  final bool downvoted;

  /// Whether the post is pinned (false by default)
  @override
  @JsonKey(name: 'pinned', defaultValue: false)
  final bool pinned;

  /// Whether the user is subscribed to the post (false by default)
  @override
  @JsonKey(name: 'isSubscribed', defaultValue: false)
  final bool isSubscribed;

  /// Date the post was created
  @override
  @JsonKey(name: 'date', required: true)
  final DateTime date;

  /// Date the post was last updated
  @override
  @JsonKey(name: 'lastModified', required: true)
  final DateTime lastModified;

  /// The category of the post
  @override
  @JsonKey(name: 'postCategory', required: true)
  final PostCategory postCategory;

  @override
  String toString() {
    return 'Post(id: $id, slug: $slug, title: $title, content: $content, user: $user, status: $status, upvotes: $upvotes, commentCount: $commentCount, upvoted: $upvoted, downvoted: $downvoted, pinned: $pinned, isSubscribed: $isSubscribed, date: $date, lastModified: $lastModified, postCategory: $postCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.upvotes, upvotes) || other.upvotes == upvotes) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.upvoted, upvoted) || other.upvoted == upvoted) &&
            (identical(other.downvoted, downvoted) ||
                other.downvoted == downvoted) &&
            (identical(other.pinned, pinned) || other.pinned == pinned) &&
            (identical(other.isSubscribed, isSubscribed) ||
                other.isSubscribed == isSubscribed) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.postCategory, postCategory) ||
                other.postCategory == postCategory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      slug,
      title,
      content,
      user,
      status,
      upvotes,
      commentCount,
      upvoted,
      downvoted,
      pinned,
      isSubscribed,
      date,
      lastModified,
      postCategory);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  const factory _Post(
      {@JsonKey(name: 'id', required: true) required final String id,
      @JsonKey(name: 'slug', required: true) required final String slug,
      @JsonKey(name: 'title', required: true) required final String title,
      @JsonKey(name: 'content', required: true) required final String content,
      @JsonKey(name: 'user', required: true) required final UserSimple user,
      @JsonKey(name: 'postStatus', required: true)
      required final PostStatus status,
      @JsonKey(name: 'upvotes', defaultValue: 0) final int upvotes,
      @JsonKey(name: 'commentCount', defaultValue: 0) final int commentCount,
      @JsonKey(name: 'upvoted', defaultValue: false) final bool upvoted,
      @JsonKey(name: 'downvoted', defaultValue: false) final bool downvoted,
      @JsonKey(name: 'pinned', defaultValue: false) final bool pinned,
      @JsonKey(name: 'isSubscribed', defaultValue: false)
      final bool isSubscribed,
      @JsonKey(name: 'date', required: true) required final DateTime date,
      @JsonKey(name: 'lastModified', required: true)
      required final DateTime lastModified,
      @JsonKey(name: 'postCategory', required: true)
      required final PostCategory postCategory}) = _$PostImpl;

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  /// The id of the post
  @override
  @JsonKey(name: 'id', required: true)
  String get id;

  /// The slug of the post
  @override
  @JsonKey(name: 'slug', required: true)
  String get slug;

  /// The title of the post
  @override
  @JsonKey(name: 'title', required: true)
  String get title;

  /// The content of the post
  @override
  @JsonKey(name: 'content', required: true)
  String get content;

  /// The user who created the post
  @override
  @JsonKey(name: 'user', required: true)
  UserSimple get user;

  /// The status of the post
  @override
  @JsonKey(name: 'postStatus', required: true)
  PostStatus get status;

  /// Post upvotes
  @override
  @JsonKey(name: 'upvotes', defaultValue: 0)
  int get upvotes;

  /// Post comment count
  @override
  @JsonKey(name: 'commentCount', defaultValue: 0)
  int get commentCount;

  /// Whether the user has upvoted the post (false by default)
  @override
  @JsonKey(name: 'upvoted', defaultValue: false)
  bool get upvoted;

  /// Whether the user has downvoted the post (false by default)
  @override
  @JsonKey(name: 'downvoted', defaultValue: false)
  bool get downvoted;

  /// Whether the post is pinned (false by default)
  @override
  @JsonKey(name: 'pinned', defaultValue: false)
  bool get pinned;

  /// Whether the user is subscribed to the post (false by default)
  @override
  @JsonKey(name: 'isSubscribed', defaultValue: false)
  bool get isSubscribed;

  /// Date the post was created
  @override
  @JsonKey(name: 'date', required: true)
  DateTime get date;

  /// Date the post was last updated
  @override
  @JsonKey(name: 'lastModified', required: true)
  DateTime get lastModified;

  /// The category of the post
  @override
  @JsonKey(name: 'postCategory', required: true)
  PostCategory get postCategory;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostCategory _$PostCategoryFromJson(Map<String, dynamic> json) {
  return _PostCategory.fromJson(json);
}

/// @nodoc
mixin _$PostCategory {
  /// The category name
  @JsonKey(name: 'id', required: true)
  String get id => throw _privateConstructorUsedError;

  /// The category name
  @JsonKey(name: 'category', required: true)
  String get category => throw _privateConstructorUsedError;

  /// Whether the category is private (false by default)
  @JsonKey(name: 'private', defaultValue: false)
  bool get private => throw _privateConstructorUsedError;

  /// Serializes this PostCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCategoryCopyWith<PostCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCategoryCopyWith<$Res> {
  factory $PostCategoryCopyWith(
          PostCategory value, $Res Function(PostCategory) then) =
      _$PostCategoryCopyWithImpl<$Res, PostCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true) String id,
      @JsonKey(name: 'category', required: true) String category,
      @JsonKey(name: 'private', defaultValue: false) bool private});
}

/// @nodoc
class _$PostCategoryCopyWithImpl<$Res, $Val extends PostCategory>
    implements $PostCategoryCopyWith<$Res> {
  _$PostCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? private = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      private: null == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostCategoryImplCopyWith<$Res>
    implements $PostCategoryCopyWith<$Res> {
  factory _$$PostCategoryImplCopyWith(
          _$PostCategoryImpl value, $Res Function(_$PostCategoryImpl) then) =
      __$$PostCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true) String id,
      @JsonKey(name: 'category', required: true) String category,
      @JsonKey(name: 'private', defaultValue: false) bool private});
}

/// @nodoc
class __$$PostCategoryImplCopyWithImpl<$Res>
    extends _$PostCategoryCopyWithImpl<$Res, _$PostCategoryImpl>
    implements _$$PostCategoryImplCopyWith<$Res> {
  __$$PostCategoryImplCopyWithImpl(
      _$PostCategoryImpl _value, $Res Function(_$PostCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? private = null,
  }) {
    return _then(_$PostCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      private: null == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostCategoryImpl implements _PostCategory {
  const _$PostCategoryImpl(
      {@JsonKey(name: 'id', required: true) required this.id,
      @JsonKey(name: 'category', required: true) required this.category,
      @JsonKey(name: 'private', defaultValue: false) required this.private});

  factory _$PostCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostCategoryImplFromJson(json);

  /// The category name
  @override
  @JsonKey(name: 'id', required: true)
  final String id;

  /// The category name
  @override
  @JsonKey(name: 'category', required: true)
  final String category;

  /// Whether the category is private (false by default)
  @override
  @JsonKey(name: 'private', defaultValue: false)
  final bool private;

  @override
  String toString() {
    return 'PostCategory(id: $id, category: $category, private: $private)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.private, private) || other.private == private));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, category, private);

  /// Create a copy of PostCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCategoryImplCopyWith<_$PostCategoryImpl> get copyWith =>
      __$$PostCategoryImplCopyWithImpl<_$PostCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostCategoryImplToJson(
      this,
    );
  }
}

abstract class _PostCategory implements PostCategory {
  const factory _PostCategory(
      {@JsonKey(name: 'id', required: true) required final String id,
      @JsonKey(name: 'category', required: true) required final String category,
      @JsonKey(name: 'private', defaultValue: false)
      required final bool private}) = _$PostCategoryImpl;

  factory _PostCategory.fromJson(Map<String, dynamic> json) =
      _$PostCategoryImpl.fromJson;

  /// The category name
  @override
  @JsonKey(name: 'id', required: true)
  String get id;

  /// The category name
  @override
  @JsonKey(name: 'category', required: true)
  String get category;

  /// Whether the category is private (false by default)
  @override
  @JsonKey(name: 'private', defaultValue: false)
  bool get private;

  /// Create a copy of PostCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostCategoryImplCopyWith<_$PostCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostStatus _$PostStatusFromJson(Map<String, dynamic> json) {
  return _PostStatus.fromJson(json);
}

/// @nodoc
mixin _$PostStatus {
  /// The status name
  @JsonKey(name: 'name', required: true)
  String get name => throw _privateConstructorUsedError;

  /// The status color
  @JsonKey(name: 'color', required: true)
  String get color => throw _privateConstructorUsedError;

  /// The status type
  @JsonKey(name: 'type', required: true)
  String get type => throw _privateConstructorUsedError;

  /// If the status is the default status
  @JsonKey(name: 'isDefault', defaultValue: false)
  bool get isDefault => throw _privateConstructorUsedError;

  /// Serializes this PostStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostStatusCopyWith<PostStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStatusCopyWith<$Res> {
  factory $PostStatusCopyWith(
          PostStatus value, $Res Function(PostStatus) then) =
      _$PostStatusCopyWithImpl<$Res, PostStatus>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name', required: true) String name,
      @JsonKey(name: 'color', required: true) String color,
      @JsonKey(name: 'type', required: true) String type,
      @JsonKey(name: 'isDefault', defaultValue: false) bool isDefault});
}

/// @nodoc
class _$PostStatusCopyWithImpl<$Res, $Val extends PostStatus>
    implements $PostStatusCopyWith<$Res> {
  _$PostStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? color = null,
    Object? type = null,
    Object? isDefault = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostStatusImplCopyWith<$Res>
    implements $PostStatusCopyWith<$Res> {
  factory _$$PostStatusImplCopyWith(
          _$PostStatusImpl value, $Res Function(_$PostStatusImpl) then) =
      __$$PostStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name', required: true) String name,
      @JsonKey(name: 'color', required: true) String color,
      @JsonKey(name: 'type', required: true) String type,
      @JsonKey(name: 'isDefault', defaultValue: false) bool isDefault});
}

/// @nodoc
class __$$PostStatusImplCopyWithImpl<$Res>
    extends _$PostStatusCopyWithImpl<$Res, _$PostStatusImpl>
    implements _$$PostStatusImplCopyWith<$Res> {
  __$$PostStatusImplCopyWithImpl(
      _$PostStatusImpl _value, $Res Function(_$PostStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? color = null,
    Object? type = null,
    Object? isDefault = null,
  }) {
    return _then(_$PostStatusImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostStatusImpl implements _PostStatus {
  const _$PostStatusImpl(
      {@JsonKey(name: 'name', required: true) required this.name,
      @JsonKey(name: 'color', required: true) required this.color,
      @JsonKey(name: 'type', required: true) required this.type,
      @JsonKey(name: 'isDefault', defaultValue: false) this.isDefault = false});

  factory _$PostStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostStatusImplFromJson(json);

  /// The status name
  @override
  @JsonKey(name: 'name', required: true)
  final String name;

  /// The status color
  @override
  @JsonKey(name: 'color', required: true)
  final String color;

  /// The status type
  @override
  @JsonKey(name: 'type', required: true)
  final String type;

  /// If the status is the default status
  @override
  @JsonKey(name: 'isDefault', defaultValue: false)
  final bool isDefault;

  @override
  String toString() {
    return 'PostStatus(name: $name, color: $color, type: $type, isDefault: $isDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostStatusImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, color, type, isDefault);

  /// Create a copy of PostStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostStatusImplCopyWith<_$PostStatusImpl> get copyWith =>
      __$$PostStatusImplCopyWithImpl<_$PostStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostStatusImplToJson(
      this,
    );
  }
}

abstract class _PostStatus implements PostStatus {
  const factory _PostStatus(
      {@JsonKey(name: 'name', required: true) required final String name,
      @JsonKey(name: 'color', required: true) required final String color,
      @JsonKey(name: 'type', required: true) required final String type,
      @JsonKey(name: 'isDefault', defaultValue: false)
      final bool isDefault}) = _$PostStatusImpl;

  factory _PostStatus.fromJson(Map<String, dynamic> json) =
      _$PostStatusImpl.fromJson;

  /// The status name
  @override
  @JsonKey(name: 'name', required: true)
  String get name;

  /// The status color
  @override
  @JsonKey(name: 'color', required: true)
  String get color;

  /// The status type
  @override
  @JsonKey(name: 'type', required: true)
  String get type;

  /// If the status is the default status
  @override
  @JsonKey(name: 'isDefault', defaultValue: false)
  bool get isDefault;

  /// Create a copy of PostStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostStatusImplCopyWith<_$PostStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserSimple _$UserSimpleFromJson(Map<String, dynamic> json) {
  return _UserSimple.fromJson(json);
}

/// @nodoc
mixin _$UserSimple {
  /// The id of the user
  @JsonKey(name: '_id', required: true)
  String get id => throw _privateConstructorUsedError;

  /// The type of the user
  @JsonKey(name: 'type', required: true)
  String get type => throw _privateConstructorUsedError;

  /// The name of the user
  @JsonKey(name: 'name', required: true)
  String get name => throw _privateConstructorUsedError;

  /// The users picture
  @JsonKey(name: 'picture')
  String? get picture => throw _privateConstructorUsedError;

  /// Serializes this UserSimple to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserSimple
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserSimpleCopyWith<UserSimple> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSimpleCopyWith<$Res> {
  factory $UserSimpleCopyWith(
          UserSimple value, $Res Function(UserSimple) then) =
      _$UserSimpleCopyWithImpl<$Res, UserSimple>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id', required: true) String id,
      @JsonKey(name: 'type', required: true) String type,
      @JsonKey(name: 'name', required: true) String name,
      @JsonKey(name: 'picture') String? picture});
}

/// @nodoc
class _$UserSimpleCopyWithImpl<$Res, $Val extends UserSimple>
    implements $UserSimpleCopyWith<$Res> {
  _$UserSimpleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSimple
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSimpleImplCopyWith<$Res>
    implements $UserSimpleCopyWith<$Res> {
  factory _$$UserSimpleImplCopyWith(
          _$UserSimpleImpl value, $Res Function(_$UserSimpleImpl) then) =
      __$$UserSimpleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id', required: true) String id,
      @JsonKey(name: 'type', required: true) String type,
      @JsonKey(name: 'name', required: true) String name,
      @JsonKey(name: 'picture') String? picture});
}

/// @nodoc
class __$$UserSimpleImplCopyWithImpl<$Res>
    extends _$UserSimpleCopyWithImpl<$Res, _$UserSimpleImpl>
    implements _$$UserSimpleImplCopyWith<$Res> {
  __$$UserSimpleImplCopyWithImpl(
      _$UserSimpleImpl _value, $Res Function(_$UserSimpleImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserSimple
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? picture = freezed,
  }) {
    return _then(_$UserSimpleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSimpleImpl implements _UserSimple {
  const _$UserSimpleImpl(
      {@JsonKey(name: '_id', required: true) required this.id,
      @JsonKey(name: 'type', required: true) required this.type,
      @JsonKey(name: 'name', required: true) required this.name,
      @JsonKey(name: 'picture') this.picture});

  factory _$UserSimpleImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSimpleImplFromJson(json);

  /// The id of the user
  @override
  @JsonKey(name: '_id', required: true)
  final String id;

  /// The type of the user
  @override
  @JsonKey(name: 'type', required: true)
  final String type;

  /// The name of the user
  @override
  @JsonKey(name: 'name', required: true)
  final String name;

  /// The users picture
  @override
  @JsonKey(name: 'picture')
  final String? picture;

  @override
  String toString() {
    return 'UserSimple(id: $id, type: $type, name: $name, picture: $picture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSimpleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, name, picture);

  /// Create a copy of UserSimple
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSimpleImplCopyWith<_$UserSimpleImpl> get copyWith =>
      __$$UserSimpleImplCopyWithImpl<_$UserSimpleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSimpleImplToJson(
      this,
    );
  }
}

abstract class _UserSimple implements UserSimple {
  const factory _UserSimple(
      {@JsonKey(name: '_id', required: true) required final String id,
      @JsonKey(name: 'type', required: true) required final String type,
      @JsonKey(name: 'name', required: true) required final String name,
      @JsonKey(name: 'picture') final String? picture}) = _$UserSimpleImpl;

  factory _UserSimple.fromJson(Map<String, dynamic> json) =
      _$UserSimpleImpl.fromJson;

  /// The id of the user
  @override
  @JsonKey(name: '_id', required: true)
  String get id;

  /// The type of the user
  @override
  @JsonKey(name: 'type', required: true)
  String get type;

  /// The name of the user
  @override
  @JsonKey(name: 'name', required: true)
  String get name;

  /// The users picture
  @override
  @JsonKey(name: 'picture')
  String? get picture;

  /// Create a copy of UserSimple
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserSimpleImplCopyWith<_$UserSimpleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  /// The featurebase id for the user
  @JsonKey(name: 'id', required: true)
  String get id => throw _privateConstructorUsedError;

  /// The platforms user id
  @JsonKey(name: 'userId', required: true)
  String get userId => throw _privateConstructorUsedError;

  /// The name of the user
  @JsonKey(name: 'name', required: true)
  String get name => throw _privateConstructorUsedError;

  /// The users picture
  @JsonKey(name: 'profilePicture')
  String? get picture => throw _privateConstructorUsedError;

  /// The amount of comments the user has created
  @JsonKey(name: 'commentsCreated')
  int get commentsCreated => throw _privateConstructorUsedError;

  /// The amount of posts the user has created
  @JsonKey(name: 'postsCreated')
  int get postsCreated => throw _privateConstructorUsedError;

  /// The type of the user
  @JsonKey(name: 'type', required: true)
  String get type => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true) String id,
      @JsonKey(name: 'userId', required: true) String userId,
      @JsonKey(name: 'name', required: true) String name,
      @JsonKey(name: 'profilePicture') String? picture,
      @JsonKey(name: 'commentsCreated') int commentsCreated,
      @JsonKey(name: 'postsCreated') int postsCreated,
      @JsonKey(name: 'type', required: true) String type});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? picture = freezed,
    Object? commentsCreated = null,
    Object? postsCreated = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      commentsCreated: null == commentsCreated
          ? _value.commentsCreated
          : commentsCreated // ignore: cast_nullable_to_non_nullable
              as int,
      postsCreated: null == postsCreated
          ? _value.postsCreated
          : postsCreated // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true) String id,
      @JsonKey(name: 'userId', required: true) String userId,
      @JsonKey(name: 'name', required: true) String name,
      @JsonKey(name: 'profilePicture') String? picture,
      @JsonKey(name: 'commentsCreated') int commentsCreated,
      @JsonKey(name: 'postsCreated') int postsCreated,
      @JsonKey(name: 'type', required: true) String type});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? picture = freezed,
    Object? commentsCreated = null,
    Object? postsCreated = null,
    Object? type = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      commentsCreated: null == commentsCreated
          ? _value.commentsCreated
          : commentsCreated // ignore: cast_nullable_to_non_nullable
              as int,
      postsCreated: null == postsCreated
          ? _value.postsCreated
          : postsCreated // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {@JsonKey(name: 'id', required: true) required this.id,
      @JsonKey(name: 'userId', required: true) required this.userId,
      @JsonKey(name: 'name', required: true) required this.name,
      @JsonKey(name: 'profilePicture') this.picture,
      @JsonKey(name: 'commentsCreated') this.commentsCreated = 0,
      @JsonKey(name: 'postsCreated') this.postsCreated = 0,
      @JsonKey(name: 'type', required: true) required this.type});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  /// The featurebase id for the user
  @override
  @JsonKey(name: 'id', required: true)
  final String id;

  /// The platforms user id
  @override
  @JsonKey(name: 'userId', required: true)
  final String userId;

  /// The name of the user
  @override
  @JsonKey(name: 'name', required: true)
  final String name;

  /// The users picture
  @override
  @JsonKey(name: 'profilePicture')
  final String? picture;

  /// The amount of comments the user has created
  @override
  @JsonKey(name: 'commentsCreated')
  final int commentsCreated;

  /// The amount of posts the user has created
  @override
  @JsonKey(name: 'postsCreated')
  final int postsCreated;

  /// The type of the user
  @override
  @JsonKey(name: 'type', required: true)
  final String type;

  @override
  String toString() {
    return 'User(id: $id, userId: $userId, name: $name, picture: $picture, commentsCreated: $commentsCreated, postsCreated: $postsCreated, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.commentsCreated, commentsCreated) ||
                other.commentsCreated == commentsCreated) &&
            (identical(other.postsCreated, postsCreated) ||
                other.postsCreated == postsCreated) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, name, picture,
      commentsCreated, postsCreated, type);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
          {@JsonKey(name: 'id', required: true) required final String id,
          @JsonKey(name: 'userId', required: true) required final String userId,
          @JsonKey(name: 'name', required: true) required final String name,
          @JsonKey(name: 'profilePicture') final String? picture,
          @JsonKey(name: 'commentsCreated') final int commentsCreated,
          @JsonKey(name: 'postsCreated') final int postsCreated,
          @JsonKey(name: 'type', required: true) required final String type}) =
      _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  /// The featurebase id for the user
  @override
  @JsonKey(name: 'id', required: true)
  String get id;

  /// The platforms user id
  @override
  @JsonKey(name: 'userId', required: true)
  String get userId;

  /// The name of the user
  @override
  @JsonKey(name: 'name', required: true)
  String get name;

  /// The users picture
  @override
  @JsonKey(name: 'profilePicture')
  String? get picture;

  /// The amount of comments the user has created
  @override
  @JsonKey(name: 'commentsCreated')
  int get commentsCreated;

  /// The amount of posts the user has created
  @override
  @JsonKey(name: 'postsCreated')
  int get postsCreated;

  /// The type of the user
  @override
  @JsonKey(name: 'type', required: true)
  String get type;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  /// The comment id
  @JsonKey(name: 'id', required: true)
  String get id => throw _privateConstructorUsedError;

  /// The user who created the comment
  @JsonKey(name: 'user', required: true)
  UserSimple get user => throw _privateConstructorUsedError;

  /// The id of the user who created the comment
  @JsonKey(name: 'createdBy', required: true)
  String get createdBy => throw _privateConstructorUsedError;

  /// The content of the comment
  @JsonKey(name: 'content', required: true)
  String get content => throw _privateConstructorUsedError;

  /// The amount of upvotes the comment has
  @JsonKey(name: 'upvotes')
  int get upvotes => throw _privateConstructorUsedError;

  /// The amount of downvotes the comment has
  @JsonKey(name: 'downvotes')
  int get downvotes => throw _privateConstructorUsedError;

  /// Whether the user has upvoted the comment
  @JsonKey(name: 'upvoted')
  bool get upvoted => throw _privateConstructorUsedError;

  /// Whether the user has downvoted the comment
  @JsonKey(name: 'downvoted')
  bool get downvoted => throw _privateConstructorUsedError;

  /// The replies to the comment
  @JsonKey(name: 'replies')
  List<Comment> get replies => throw _privateConstructorUsedError;

  /// Whether the comment is pinned
  @JsonKey(name: 'pinned')
  bool get pinned => throw _privateConstructorUsedError;

  /// Whether the comment is private
  @JsonKey(name: 'isPrivate')
  bool get isPrivate => throw _privateConstructorUsedError;

  /// The date the comment was created
  @JsonKey(name: 'createdAt', required: true)
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Comment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true) String id,
      @JsonKey(name: 'user', required: true) UserSimple user,
      @JsonKey(name: 'createdBy', required: true) String createdBy,
      @JsonKey(name: 'content', required: true) String content,
      @JsonKey(name: 'upvotes') int upvotes,
      @JsonKey(name: 'downvotes') int downvotes,
      @JsonKey(name: 'upvoted') bool upvoted,
      @JsonKey(name: 'downvoted') bool downvoted,
      @JsonKey(name: 'replies') List<Comment> replies,
      @JsonKey(name: 'pinned') bool pinned,
      @JsonKey(name: 'isPrivate') bool isPrivate,
      @JsonKey(name: 'createdAt', required: true) DateTime createdAt});

  $UserSimpleCopyWith<$Res> get user;
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? createdBy = null,
    Object? content = null,
    Object? upvotes = null,
    Object? downvotes = null,
    Object? upvoted = null,
    Object? downvoted = null,
    Object? replies = null,
    Object? pinned = null,
    Object? isPrivate = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserSimple,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      upvotes: null == upvotes
          ? _value.upvotes
          : upvotes // ignore: cast_nullable_to_non_nullable
              as int,
      downvotes: null == downvotes
          ? _value.downvotes
          : downvotes // ignore: cast_nullable_to_non_nullable
              as int,
      upvoted: null == upvoted
          ? _value.upvoted
          : upvoted // ignore: cast_nullable_to_non_nullable
              as bool,
      downvoted: null == downvoted
          ? _value.downvoted
          : downvoted // ignore: cast_nullable_to_non_nullable
              as bool,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      pinned: null == pinned
          ? _value.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as bool,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserSimpleCopyWith<$Res> get user {
    return $UserSimpleCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentImplCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$CommentImplCopyWith(
          _$CommentImpl value, $Res Function(_$CommentImpl) then) =
      __$$CommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true) String id,
      @JsonKey(name: 'user', required: true) UserSimple user,
      @JsonKey(name: 'createdBy', required: true) String createdBy,
      @JsonKey(name: 'content', required: true) String content,
      @JsonKey(name: 'upvotes') int upvotes,
      @JsonKey(name: 'downvotes') int downvotes,
      @JsonKey(name: 'upvoted') bool upvoted,
      @JsonKey(name: 'downvoted') bool downvoted,
      @JsonKey(name: 'replies') List<Comment> replies,
      @JsonKey(name: 'pinned') bool pinned,
      @JsonKey(name: 'isPrivate') bool isPrivate,
      @JsonKey(name: 'createdAt', required: true) DateTime createdAt});

  @override
  $UserSimpleCopyWith<$Res> get user;
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$CommentImpl>
    implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(
      _$CommentImpl _value, $Res Function(_$CommentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? createdBy = null,
    Object? content = null,
    Object? upvotes = null,
    Object? downvotes = null,
    Object? upvoted = null,
    Object? downvoted = null,
    Object? replies = null,
    Object? pinned = null,
    Object? isPrivate = null,
    Object? createdAt = null,
  }) {
    return _then(_$CommentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserSimple,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      upvotes: null == upvotes
          ? _value.upvotes
          : upvotes // ignore: cast_nullable_to_non_nullable
              as int,
      downvotes: null == downvotes
          ? _value.downvotes
          : downvotes // ignore: cast_nullable_to_non_nullable
              as int,
      upvoted: null == upvoted
          ? _value.upvoted
          : upvoted // ignore: cast_nullable_to_non_nullable
              as bool,
      downvoted: null == downvoted
          ? _value.downvoted
          : downvoted // ignore: cast_nullable_to_non_nullable
              as bool,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      pinned: null == pinned
          ? _value.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as bool,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentImpl implements _Comment {
  const _$CommentImpl(
      {@JsonKey(name: 'id', required: true) required this.id,
      @JsonKey(name: 'user', required: true) required this.user,
      @JsonKey(name: 'createdBy', required: true) required this.createdBy,
      @JsonKey(name: 'content', required: true) required this.content,
      @JsonKey(name: 'upvotes') this.upvotes = 0,
      @JsonKey(name: 'downvotes') this.downvotes = 0,
      @JsonKey(name: 'upvoted') this.upvoted = false,
      @JsonKey(name: 'downvoted') this.downvoted = false,
      @JsonKey(name: 'replies') required final List<Comment> replies,
      @JsonKey(name: 'pinned') this.pinned = false,
      @JsonKey(name: 'isPrivate') this.isPrivate = false,
      @JsonKey(name: 'createdAt', required: true) required this.createdAt})
      : _replies = replies;

  factory _$CommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentImplFromJson(json);

  /// The comment id
  @override
  @JsonKey(name: 'id', required: true)
  final String id;

  /// The user who created the comment
  @override
  @JsonKey(name: 'user', required: true)
  final UserSimple user;

  /// The id of the user who created the comment
  @override
  @JsonKey(name: 'createdBy', required: true)
  final String createdBy;

  /// The content of the comment
  @override
  @JsonKey(name: 'content', required: true)
  final String content;

  /// The amount of upvotes the comment has
  @override
  @JsonKey(name: 'upvotes')
  final int upvotes;

  /// The amount of downvotes the comment has
  @override
  @JsonKey(name: 'downvotes')
  final int downvotes;

  /// Whether the user has upvoted the comment
  @override
  @JsonKey(name: 'upvoted')
  final bool upvoted;

  /// Whether the user has downvoted the comment
  @override
  @JsonKey(name: 'downvoted')
  final bool downvoted;

  /// The replies to the comment
  final List<Comment> _replies;

  /// The replies to the comment
  @override
  @JsonKey(name: 'replies')
  List<Comment> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  /// Whether the comment is pinned
  @override
  @JsonKey(name: 'pinned')
  final bool pinned;

  /// Whether the comment is private
  @override
  @JsonKey(name: 'isPrivate')
  final bool isPrivate;

  /// The date the comment was created
  @override
  @JsonKey(name: 'createdAt', required: true)
  final DateTime createdAt;

  @override
  String toString() {
    return 'Comment(id: $id, user: $user, createdBy: $createdBy, content: $content, upvotes: $upvotes, downvotes: $downvotes, upvoted: $upvoted, downvoted: $downvoted, replies: $replies, pinned: $pinned, isPrivate: $isPrivate, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.upvotes, upvotes) || other.upvotes == upvotes) &&
            (identical(other.downvotes, downvotes) ||
                other.downvotes == downvotes) &&
            (identical(other.upvoted, upvoted) || other.upvoted == upvoted) &&
            (identical(other.downvoted, downvoted) ||
                other.downvoted == downvoted) &&
            const DeepCollectionEquality().equals(other._replies, _replies) &&
            (identical(other.pinned, pinned) || other.pinned == pinned) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user,
      createdBy,
      content,
      upvotes,
      downvotes,
      upvoted,
      downvoted,
      const DeepCollectionEquality().hash(_replies),
      pinned,
      isPrivate,
      createdAt);

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentImplToJson(
      this,
    );
  }
}

abstract class _Comment implements Comment {
  const factory _Comment(
      {@JsonKey(name: 'id', required: true) required final String id,
      @JsonKey(name: 'user', required: true) required final UserSimple user,
      @JsonKey(name: 'createdBy', required: true)
      required final String createdBy,
      @JsonKey(name: 'content', required: true) required final String content,
      @JsonKey(name: 'upvotes') final int upvotes,
      @JsonKey(name: 'downvotes') final int downvotes,
      @JsonKey(name: 'upvoted') final bool upvoted,
      @JsonKey(name: 'downvoted') final bool downvoted,
      @JsonKey(name: 'replies') required final List<Comment> replies,
      @JsonKey(name: 'pinned') final bool pinned,
      @JsonKey(name: 'isPrivate') final bool isPrivate,
      @JsonKey(name: 'createdAt', required: true)
      required final DateTime createdAt}) = _$CommentImpl;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$CommentImpl.fromJson;

  /// The comment id
  @override
  @JsonKey(name: 'id', required: true)
  String get id;

  /// The user who created the comment
  @override
  @JsonKey(name: 'user', required: true)
  UserSimple get user;

  /// The id of the user who created the comment
  @override
  @JsonKey(name: 'createdBy', required: true)
  String get createdBy;

  /// The content of the comment
  @override
  @JsonKey(name: 'content', required: true)
  String get content;

  /// The amount of upvotes the comment has
  @override
  @JsonKey(name: 'upvotes')
  int get upvotes;

  /// The amount of downvotes the comment has
  @override
  @JsonKey(name: 'downvotes')
  int get downvotes;

  /// Whether the user has upvoted the comment
  @override
  @JsonKey(name: 'upvoted')
  bool get upvoted;

  /// Whether the user has downvoted the comment
  @override
  @JsonKey(name: 'downvoted')
  bool get downvoted;

  /// The replies to the comment
  @override
  @JsonKey(name: 'replies')
  List<Comment> get replies;

  /// Whether the comment is pinned
  @override
  @JsonKey(name: 'pinned')
  bool get pinned;

  /// Whether the comment is private
  @override
  @JsonKey(name: 'isPrivate')
  bool get isPrivate;

  /// The date the comment was created
  @override
  @JsonKey(name: 'createdAt', required: true)
  DateTime get createdAt;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
