// GENERATED CODE - DO NOT MODIFY BY HAND

part of '_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'description',
      'helpCenterId',
      'organizationId',
      'locale',
      'slug',
      'featurebaseUrl',
      'author',
      'availableLocales',
      'publishedLocales'
    ],
  );
  return _$ArticleImpl(
    articleId: json['articleId'] as String? ?? '',
    title: json['title'] as String? ?? '',
    description: json['description'] as String,
    body: json['body'] as String?,
    icon: json['icon'] == null
        ? null
        : FBIcon.fromJson(json['icon'] as Map<String, dynamic>),
    parentId: json['parentId'] as String?,
    helpCenterId: json['helpCenterId'] as String,
    organizationId: json['organizationId'] as String,
    state: json['state'] as String? ?? 'live',
    locale: json['locale'] as String,
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: DateTime.parse(json['updatedAt'] as String),
    slug: json['slug'] as String,
    featurebaseUrl: json['featurebaseUrl'] as String,
    externalUrl: json['externalUrl'] as String?,
    isDraftDiffersFromLive: json['isDraftDiffersFromLive'] as bool? ?? false,
    isPublished: json['isPublished'] as bool? ?? true,
    author: Author.fromJson(json['author'] as Map<String, dynamic>),
    availableLocales: (json['availableLocales'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    publishedLocales: (json['publishedLocales'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) =>
    <String, dynamic>{
      'articleId': instance.articleId,
      'title': instance.title,
      'description': instance.description,
      'body': instance.body,
      'icon': instance.icon,
      'parentId': instance.parentId,
      'helpCenterId': instance.helpCenterId,
      'organizationId': instance.organizationId,
      'state': instance.state,
      'locale': instance.locale,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'slug': instance.slug,
      'featurebaseUrl': instance.featurebaseUrl,
      'externalUrl': instance.externalUrl,
      'isDraftDiffersFromLive': instance.isDraftDiffersFromLive,
      'isPublished': instance.isPublished,
      'author': instance.author,
      'availableLocales': instance.availableLocales,
      'publishedLocales': instance.publishedLocales,
    };

_$AuthorImpl _$$AuthorImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['name', 'authorId'],
  );
  return _$AuthorImpl(
    name: json['name'] as String,
    avatarUrl: json['avatarUrl'] as String?,
    authorId: json['authorId'] as String,
  );
}

Map<String, dynamic> _$$AuthorImplToJson(_$AuthorImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'authorId': instance.authorId,
    };

_$ChangelogImpl _$$ChangelogImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'title',
      'content',
      'organization',
      'locale',
      'changelogCategories',
      'slug',
      'availableLocales',
      'publishedLocales'
    ],
  );
  return _$ChangelogImpl(
    id: json['id'] as String,
    title: json['title'] as String,
    content: json['content'] as String,
    featuredImage: json['featuredImage'] as String?,
    organization: json['organization'] as String,
    state: json['state'] as String? ?? 'live',
    locale: json['locale'] as String,
    changelogCategories: (json['changelogCategories'] as List<dynamic>)
        .map((e) => ChangelogCategory.fromJson(e as Map<String, dynamic>))
        .toList(),
    date: DateTime.parse(json['date'] as String),
    slug: json['slug'] as String,
    isDraftDiffersFromLive: json['isDraftDiffersFromLive'] as bool? ?? false,
    isPublished: json['isPublished'] as bool? ?? true,
    availableLocales: (json['availableLocales'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    publishedLocales: (json['publishedLocales'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$$ChangelogImplToJson(_$ChangelogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'featuredImage': instance.featuredImage,
      'organization': instance.organization,
      'state': instance.state,
      'locale': instance.locale,
      'changelogCategories': instance.changelogCategories,
      'date': instance.date.toIso8601String(),
      'slug': instance.slug,
      'isDraftDiffersFromLive': instance.isDraftDiffersFromLive,
      'isPublished': instance.isPublished,
      'availableLocales': instance.availableLocales,
      'publishedLocales': instance.publishedLocales,
    };

_$ChangelogCategoryImpl _$$ChangelogCategoryImplFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['name', 'color'],
  );
  return _$ChangelogCategoryImpl(
    name: json['name'] as String,
    color: json['color'] as String,
  );
}

Map<String, dynamic> _$$ChangelogCategoryImplToJson(
        _$ChangelogCategoryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'color': instance.color,
    };

_$CollectionImpl _$$CollectionImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'collectionId',
      'name',
      'description',
      'helpCenterId',
      'organizationId',
      'defaultLocale',
      'path',
      'slug',
      'featurebaseUrl',
      'locale',
      'authors',
      'availableLocales'
    ],
  );
  return _$CollectionImpl(
    collectionId: json['collectionId'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    parentId: json['parentId'] as String?,
    icon: json['icon'] == null
        ? null
        : FBIcon.fromJson(json['icon'] as Map<String, dynamic>),
    helpCenterId: json['helpCenterId'] as String,
    organizationId: json['organizationId'] as String,
    defaultLocale: json['defaultLocale'] as String,
    order: (json['order'] as num?)?.toInt(),
    type: json['type'] as String? ?? 'collection',
    path: json['path'] as String,
    slug: json['slug'] as String,
    featurebaseUrl: json['featurebaseUrl'] as String,
    externalUrl: json['externalUrl'] as String?,
    locale: json['locale'] as String,
    authors: (json['authors'] as List<dynamic>)
        .map((e) => Author.fromJson(e as Map<String, dynamic>))
        .toList(),
    availableLocales: (json['availableLocales'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    structure: (json['structure'] as List<dynamic>?)
        ?.map((e) => CollectionContent.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$$CollectionImplToJson(_$CollectionImpl instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
      'name': instance.name,
      'description': instance.description,
      'parentId': instance.parentId,
      'icon': instance.icon,
      'helpCenterId': instance.helpCenterId,
      'organizationId': instance.organizationId,
      'defaultLocale': instance.defaultLocale,
      'order': instance.order,
      'type': instance.type,
      'path': instance.path,
      'slug': instance.slug,
      'featurebaseUrl': instance.featurebaseUrl,
      'externalUrl': instance.externalUrl,
      'locale': instance.locale,
      'authors': instance.authors,
      'availableLocales': instance.availableLocales,
      'structure': instance.structure,
    };

_$HelpCenterImpl _$$HelpCenterImplFromJson(Map<String, dynamic> json) =>
    _$HelpCenterImpl(
      helpCenterId: json['helpCenterId'] as String,
      displayName: json['displayName'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      searchPlaceholder: json['searchPlaceholder'] as String,
      navItems: (json['navItems'] as List<dynamic>)
          .map((e) => NavItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      isPublic: json['isPublic'] as bool,
      organizationId: json['organizationId'] as String,
      defaultLocale: json['defaultLocale'] as String,
      locale: json['locale'] as String,
      availableLocales: (json['availableLocales'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      structure: (json['structure'] as List<dynamic>?)
          ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HelpCenterImplToJson(_$HelpCenterImpl instance) =>
    <String, dynamic>{
      'helpCenterId': instance.helpCenterId,
      'displayName': instance.displayName,
      'title': instance.title,
      'description': instance.description,
      'searchPlaceholder': instance.searchPlaceholder,
      'navItems': instance.navItems,
      'isPublic': instance.isPublic,
      'organizationId': instance.organizationId,
      'defaultLocale': instance.defaultLocale,
      'locale': instance.locale,
      'availableLocales': instance.availableLocales,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'structure': instance.structure,
    };

_$FBIconImpl _$$FBIconImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['value', 'type'],
  );
  return _$FBIconImpl(
    value: json['value'] as String,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$$FBIconImplToJson(_$FBIconImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'type': instance.type,
    };

_$NavItemImpl _$$NavItemImplFromJson(Map<String, dynamic> json) =>
    _$NavItemImpl(
      type: json['type'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
      icon: json['icon'] == null
          ? null
          : FBIcon.fromJson(json['icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NavItemImplToJson(_$NavItemImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'url': instance.url,
      'icon': instance.icon,
    };

_$OrganizationImpl _$$OrganizationImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['displayName', 'color'],
  );
  return _$OrganizationImpl(
    displayName: json['displayName'] as String,
    color: json['color'] as String,
    ssoUrl: json['ssoUrl'] as String?,
  );
}

Map<String, dynamic> _$$OrganizationImplToJson(_$OrganizationImpl instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'color': instance.color,
      'ssoUrl': instance.ssoUrl,
    };

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'title',
      'content',
      'user',
      'postStatus',
      'date',
      'lastModified',
      'postCategory'
    ],
  );
  return _$PostImpl(
    id: json['id'] as String,
    title: json['title'] as String,
    content: json['content'] as String,
    user: UserSimple.fromJson(json['user'] as Map<String, dynamic>),
    status: PostStatus.fromJson(json['postStatus'] as Map<String, dynamic>),
    upvotes: (json['upvotes'] as num?)?.toInt() ?? 0,
    commentCount: (json['commentCount'] as num?)?.toInt() ?? 0,
    upvoted: json['upvoted'] as bool? ?? false,
    downvoted: json['downvoted'] as bool? ?? false,
    pinned: json['pinned'] as bool? ?? false,
    date: DateTime.parse(json['date'] as String),
    lastModified: DateTime.parse(json['lastModified'] as String),
    postCategory:
        PostCategory.fromJson(json['postCategory'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'user': instance.user,
      'postStatus': instance.status,
      'upvotes': instance.upvotes,
      'commentCount': instance.commentCount,
      'upvoted': instance.upvoted,
      'downvoted': instance.downvoted,
      'pinned': instance.pinned,
      'date': instance.date.toIso8601String(),
      'lastModified': instance.lastModified.toIso8601String(),
      'postCategory': instance.postCategory,
    };

_$PostCategoryImpl _$$PostCategoryImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['category'],
  );
  return _$PostCategoryImpl(
    category: json['category'] as String,
    private: json['private'] as bool? ?? false,
  );
}

Map<String, dynamic> _$$PostCategoryImplToJson(_$PostCategoryImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'private': instance.private,
    };

_$PostStatusImpl _$$PostStatusImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['name', 'color', 'type'],
  );
  return _$PostStatusImpl(
    name: json['name'] as String,
    color: json['color'] as String,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$$PostStatusImplToJson(_$PostStatusImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'color': instance.color,
      'type': instance.type,
    };

_$UserSimpleImpl _$$UserSimpleImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['_id', 'type', 'name'],
  );
  return _$UserSimpleImpl(
    id: json['_id'] as String,
    type: json['type'] as String,
    name: json['name'] as String,
    picture: json['picture'] as String?,
  );
}

Map<String, dynamic> _$$UserSimpleImplToJson(_$UserSimpleImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'picture': instance.picture,
    };

ResultsPagination<T> _$ResultsPaginationFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) {
  $checkKeys(
    json,
    requiredKeys: const [
      'results',
      'page',
      'limit',
      'totalPages',
      'totalResults'
    ],
  );
  return ResultsPagination<T>(
    (json['results'] as List<dynamic>).map(fromJsonT).toList(),
    (json['page'] as num).toInt(),
    (json['limit'] as num).toInt(),
    (json['totalPages'] as num).toInt(),
    (json['totalResults'] as num).toInt(),
  );
}
