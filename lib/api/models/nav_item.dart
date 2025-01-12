part of featurebase.models;

@freezed
class NavItem with _$NavItem {
  const factory NavItem({
    /// The type of the nav item
    required String type,

    /// The title of the nav item
    required String title,

    /// The url of the nav item
    required String url,

    /// The icon of the nav item
    @JsonKey(name: 'icon') required FBIcon? icon,
  }) = _NavItem;

  factory NavItem.fromJson(Map<String, Object?> json) =>
      _$NavItemFromJson(json);
}
