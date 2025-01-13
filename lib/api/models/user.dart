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
