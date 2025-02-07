part of featurebase.models;

@freezed
class Comment with _$Comment {
  const factory Comment({
    /// The comment id
    @JsonKey(name: 'id', required: true) required String id,

    /// The user who created the comment
    @JsonKey(name: 'user', required: true) required UserSimple user,

    /// The id of the user who created the comment
    @JsonKey(name: 'createdBy', required: true) required String createdBy,

    /// The content of the comment
    @JsonKey(name: 'content', required: true) required String content,

    /// The amount of upvotes the comment has
    @JsonKey(name: 'upvotes') @Default(0) int upvotes,

    /// The amount of downvotes the comment has
    @JsonKey(name: 'downvotes') @Default(0) int downvotes,

    /// Whether the user has upvoted the comment
    @JsonKey(name: 'upvoted') @Default(false) bool upvoted,

    /// Whether the user has downvoted the comment
    @JsonKey(name: 'downvoted') @Default(false) bool downvoted,

    /// The replies to the comment
    @JsonKey(name: 'replies') required List<Comment> replies,

    /// Whether the comment is pinned
    @JsonKey(name: 'pinned') @Default(false) bool pinned,

    /// Whether the comment is private
    @JsonKey(name: 'isPrivate') @Default(false) bool isPrivate,

    /// The date the comment was created
    @JsonKey(name: 'createdAt', required: true) required DateTime createdAt,
  }) = _Comment;

  factory Comment.fromJson(Map<String, Object?> json) =>
      _$CommentFromJson(json);
}
