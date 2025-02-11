part of featurebase.models;

@freezed
class HelpCenter with _$HelpCenter {
  const factory HelpCenter({
    /// The help center's unique ID.
    required String helpCenterId,

    /// The display name of the help center. Usually your company name like "Featurebase".
    required String displayName,

    /// The title of the help center. Something like "How can we help you?" or "YourCompany Help Center".
    required String title,

    /// The description of the help center.
    required String description,

    /// The placeholder text for the search input.
    required String searchPlaceholder,

    /// An array of navigation items for the help center.
    required List<NavItem> navItems,

    /// Indicates whether the help center is public.
    required bool isPublic,

    /// The ID of the organization that the help center belongs to.
    required String organizationId,

    /// The default locale of the help center.
    required String defaultLocale,

    /// The locale of the help center.
    required String locale,

    /// An array of available locales for the help center.
    required List<String> availableLocales,

    /// The date when the help center was created.
    required DateTime createdAt,

    /// The date when the help center was last updated.
    required DateTime updatedAt,

    /// Whether to hide the date info on articles.
    @Default(false) bool hideDateInfo,

    /// Whether to hide the author info on articles.
    @Default(false) bool hideAuthorInfo,

    /// List of collections (only returned when using the withStructure option)
    List<Collection>? structure,
  }) = _HelpCenter;

  factory HelpCenter.fromJson(Map<String, Object?> json) =>
      _$HelpCenterFromJson(json);
}
