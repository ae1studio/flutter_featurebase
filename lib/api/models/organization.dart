part of featurebase.models;

@freezed
class Organization with _$Organization {
  const factory Organization({
    /// The display name of the organization
    @JsonKey(name: 'displayName', required: true) required String displayName,

    /// Color hash code
    @JsonKey(name: 'color', required: true) required String color,

    /// SSO Url
    @JsonKey(name: 'ssoUrl') String? ssoUrl,
  }) = _Organization;

  factory Organization.fromJson(Map<String, Object?> json) =>
      _$OrganizationFromJson(json);
}
