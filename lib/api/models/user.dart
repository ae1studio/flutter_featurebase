part of featurebase.models;

@freezed
class UserSimple with _$UserSimple {
  const factory UserSimple({
    /// The id of the user
    @JsonKey(name: '_id', required: true) required String id,

    /// The type of the user
    @JsonKey(name: 'type', required: true) required String type,

    /// The name of the user
    @JsonKey(name: 'name', required: true) required String name,

    /// The users picture
    @JsonKey(name: 'picture') String? picture,
  }) = _UserSimple;

  factory UserSimple.fromJson(Map<String, Object?> json) =>
      _$UserSimpleFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    /// The featurebase id for the user
    @JsonKey(name: 'id', required: true) required String id,

    /// The platforms user id
    @JsonKey(name: 'userId', required: true) required String userId,

    /// The name of the user
    @JsonKey(name: 'name', required: true) required String name,

    /// The users picture
    @JsonKey(name: 'profilePicture') String? picture,

    /// The amount of comments the user has created
    @JsonKey(name: 'commentsCreated') @Default(0) int commentsCreated,

    /// The amount of posts the user has created
    @JsonKey(name: 'postsCreated') @Default(0) int postsCreated,

    /// The type of the user
    @JsonKey(name: 'type', required: true) required String type,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
