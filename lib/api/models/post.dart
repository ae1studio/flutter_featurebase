part of featurebase.models;

@freezed
class Post with _$Post {
  const factory Post({
    /// The id of the post
    @JsonKey(name: 'id', required: true) required String id,

    /// The slug of the post
    @JsonKey(name: 'slug', required: true) required String slug,

    /// The title of the post
    @JsonKey(name: 'title', required: true) required String title,

    /// The content of the post
    @JsonKey(name: 'content', required: true) required String content,

    /// The user who created the post
    @JsonKey(name: 'user', required: true) required UserSimple user,

    /// The status of the post
    @JsonKey(name: 'postStatus', required: true) required PostStatus status,

    /// Post upvotes
    @JsonKey(name: 'upvotes', defaultValue: 0) @Default(0) int upvotes,

    /// Post comment count
    @JsonKey(name: 'commentCount', defaultValue: 0)
    @Default(0)
    int commentCount,

    /// Whether the user has upvoted the post (false by default)
    @JsonKey(name: 'upvoted', defaultValue: false) @Default(false) bool upvoted,

    /// Whether the user has downvoted the post (false by default)
    @JsonKey(name: 'downvoted', defaultValue: false)
    @Default(false)
    bool downvoted,

    /// Whether the post is pinned (false by default)
    @JsonKey(name: 'pinned', defaultValue: false) @Default(false) bool pinned,

    /// Whether the user is subscribed to the post (false by default)
    @JsonKey(name: 'isSubscribed', defaultValue: false)
    @Default(false)
    bool isSubscribed,

    /// Date the post was created
    @JsonKey(name: 'date', required: true) required DateTime date,

    /// Date the post was last updated
    @JsonKey(name: 'lastModified', required: true)
    required DateTime lastModified,

    /// The category of the post
    @JsonKey(name: 'postCategory', required: true)
    required PostCategory postCategory,
  }) = _Post;

  factory Post.fromJson(Map<String, Object?> json) => _$PostFromJson(json);
}

@freezed
class PostCategory with _$PostCategory {
  const factory PostCategory({
    /// The category name
    @JsonKey(name: 'id', required: true) required String id,

    /// The category name
    @JsonKey(name: 'category', required: true) required String category,

    /// Whether the category is private (false by default)
    @JsonKey(name: 'private', defaultValue: false) required bool private,
  }) = _PostCategory;

  factory PostCategory.fromJson(Map<String, Object?> json) =>
      _$PostCategoryFromJson(json);
}

@freezed
class PostStatus with _$PostStatus {
  const factory PostStatus({
    /// The status name
    @JsonKey(name: 'name', required: true) required String name,

    /// The status color
    @JsonKey(name: 'color', required: true) required String color,

    /// The status type
    @JsonKey(name: 'type', required: true) required String type,

    /// If the status is the default status
    @JsonKey(name: 'isDefault', defaultValue: false)
    @Default(false)
    bool isDefault,
  }) = _PostStatus;

  factory PostStatus.fromJson(Map<String, Object?> json) =>
      _$PostStatusFromJson(json);
}
