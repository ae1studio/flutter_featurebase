part of featurebase.models;

@freezed
class Collection with _$Collection {
  const factory Collection({
    /// The collection's unique ID.
    @JsonKey(name: 'collectionId', required: true) required String collectionId,

    /// The name of the collection.
    @JsonKey(name: 'name', required: true) required String name,

    /// A description of the collection.
    @JsonKey(name: 'description', required: true) required String description,

    /// The ID of the parent collection, if the collection is nested.
    required String? parentId,

    /// The icon of the collection.
    @JsonKey(name: 'icon') required FBIcon? icon,

    /// The ID of the help center this collection belongs to.
    @JsonKey(name: 'helpCenterId', required: true) required String helpCenterId,

    /// The ID of the organization that the collection belongs to.
    @JsonKey(name: 'organizationId', required: true)
    required String organizationId,

    /// The default locale of the collection.
    @JsonKey(name: 'defaultLocale', required: true)
    required String defaultLocale,

    /// The order of the collection in listings.
    int? order,

    /// The type of the document, which is "collection".
    @JsonKey(name: 'type', defaultValue: 'collection') required String type,

    /// The path to the collection within the help center hierarchy.
    @JsonKey(name: 'path', required: true) required String path,

    /// The URL-friendly slug of the collection.
    @JsonKey(name: 'slug', required: true) required String slug,

    /// The Featurebase URL for the collection.
    @JsonKey(name: 'featurebaseUrl', required: true)
    required String featurebaseUrl,

    /// The custom domain URL for the collection.
    required String? externalUrl,

    /// The locale of the collection.
    @JsonKey(name: 'locale', required: true) required String locale,

    /// Authors of the article (will be null if hideAuthorInfo is true)
    @JsonKey(name: 'authors') List<Author>? authors,

    /// An array of available locales for the collection.
    @JsonKey(name: 'availableLocales', required: true)
    required List<String> availableLocales,

    /// List of articles and collections (only returned when using the withStructure option)
    List<CollectionContent>? structure,
  }) = _Collection;

  factory Collection.fromJson(Map<String, Object?> json) =>
      _$CollectionFromJson(json);
}

@freezed
class CollectionContent with _$CollectionContent {
  @JsonKey(includeFromJson: false)
  const factory CollectionContent.article(Article article) =
      _CollectionContentArticle;
  @JsonKey(includeFromJson: false)
  const factory CollectionContent.collection(Collection collection) =
      _CollectionContentCollection;

  factory CollectionContent.fromJson(Map<String, dynamic> json) {
    if (json['type'] == 'article') {
      return CollectionContent.article(Article.fromJson(json));
    } else if (json['type'] == 'collection') {
      return CollectionContent.collection(Collection.fromJson(json));
    }
    throw Exception('Unknown type for CollectionContent: ${json['type']}');
  }

  Map<String, dynamic> toJson() {
    return when(
      article: (article) => article.toJson(),
      collection: (collection) => collection.toJson(),
    );
  }
}
