part of featurebase.models;

@freezed
class Article with _$Article {
  const factory Article({
    /// The article's unique ID.
    ///
    /// TODO: Check why sometimes articleId can be null
    @JsonKey(name: 'articleId', defaultValue: '') required String articleId,

    /// The title of the article.
    ///
    /// TODO: Check why sometimes title can be null
    @JsonKey(name: 'title', defaultValue: '') required String title,

    /// A brief description of the article.
    @JsonKey(name: 'description', required: true) required String description,

    /// The HTML content of the article.
    ///
    /// Not returned when using withStructure
    String? body,

    /// The icon of the article.
    @JsonKey(name: 'icon') required FBIcon? icon,

    /// The ID of the parent collection, if any.
    String? parentId,

    /// The ID of the help center this article belongs to.
    @JsonKey(name: 'helpCenterId', required: true) required String helpCenterId,

    /// The ID of the organization that the article belongs to.
    @JsonKey(name: 'organizationId', required: true)
    required String organizationId,

    /// The state of the article, either "live" or "draft".
    @JsonKey(name: 'state', defaultValue: 'live') required String state,

    /// The locale of the article.
    @JsonKey(name: 'locale', required: true) required String locale,

    //TODO: add translations

    /// The date when the article was created (will be null if hideDateInfo is true)
    DateTime? createdAt,

    /// The date when the article was last updated (will be null if hideDateInfo is true)
    DateTime? updatedAt,

    /// The URL-friendly slug of the article.
    @JsonKey(name: 'slug', required: true) required String slug,

    /// The Featurebase URL for the article.
    @JsonKey(name: 'featurebaseUrl', required: true)
    required String featurebaseUrl,

    /// The external URL for the article.
    String? externalUrl,

    /// Indicates whether the draft version differs from the live published version.
    @JsonKey(name: 'isDraftDiffersFromLive', defaultValue: false)
    required bool isDraftDiffersFromLive,

    /// Indicates whether the article is published.
    @JsonKey(name: 'isPublished', defaultValue: true) required bool isPublished,

    /// Author of the article (will be null if hideAuthorInfo is true)
    @JsonKey(name: 'author') Author? author,

    /// An array of available locales for the article.
    @JsonKey(name: 'availableLocales', required: true)
    required List<String> availableLocales,

    /// An array of locales in which the article is published.
    @JsonKey(name: 'publishedLocales', required: true)
    required List<String> publishedLocales,
  }) = _Article;

  factory Article.fromJson(Map<String, Object?> json) =>
      _$ArticleFromJson(json);
}

@freezed
class Author with _$Author {
  const factory Author({
    /// Name of the author
    @JsonKey(name: 'name', required: true) required String name,

    /// Avatar URL of the author
    @JsonKey(name: 'avatarUrl') String? avatarUrl,

    /// Id of the author
    @JsonKey(name: 'authorId', required: true) required String authorId,
  }) = _Author;

  factory Author.fromJson(Map<String, Object?> json) => _$AuthorFromJson(json);
}
