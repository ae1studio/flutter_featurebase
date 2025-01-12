part of featurebase.models;

@freezed
class FBIcon with _$FBIcon {
  const factory FBIcon({
    /// Icon value
    @JsonKey(name: 'value', required: true) required String value,

    /// Icon type
    @JsonKey(name: 'type', required: true) required String type,
  }) = _FBIcon;

  factory FBIcon.fromJson(Map<String, Object?> json) => _$FBIconFromJson(json);
}
