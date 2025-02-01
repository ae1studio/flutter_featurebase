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

    /// Custom domain
    @JsonKey(name: 'customDomain') String? customDomain,

    /// The widgets of the organization
    @JsonKey(name: 'widget') AIOWidget? widget,

    /// The settings of the organization
    @JsonKey(name: 'settings', required: true)
    required OrganizationSettings settings,

    /// The post categories of the organization
    @JsonKey(name: 'postCategories', required: true)
    required List<PostCategory> postCategories,

    /// Picture url
    @JsonKey(name: 'picture') String? picture,
  }) = _Organization;

  factory Organization.fromJson(Map<String, Object?> json) =>
      _$OrganizationFromJson(json);
}

@freezed
class AIOWidget with _$AIOWidget {
  const factory AIOWidget({
    /// The title of the widget
    @JsonKey(name: 'title', required: true) required String title,

    /// The description of the widget
    @JsonKey(name: 'description', required: true) required String description,

    /// The cards of the widget
    @JsonKey(name: 'cards', required: true) required List<AIOCard> cards,
  }) = _AIOWidget;

  factory AIOWidget.fromJson(Map<String, Object?> json) =>
      _$AIOWidgetFromJson(json);
}

@freezed
class AIOCard with _$AIOCard {
  const factory AIOCard({
    /// The title of the card
    @JsonKey(name: 'title', required: true) required String title,

    /// The description of the card
    @JsonKey(name: 'description', required: true) required String description,

    /// The category of the card
    @JsonKey(name: 'category', required: true) required String category,
  }) = _AIOCard;

  factory AIOCard.fromJson(Map<String, Object?> json) =>
      _$AIOCardFromJson(json);
}

@freezed
class OrganizationSettings with _$OrganizationSettings {
  const factory OrganizationSettings({
    /// Downvotes feature enabled
    @JsonKey(name: 'downvotesEnabled', defaultValue: false)
    @Default(false)
    bool downvotesEnabled,

    /// Default sorting order of posts
    @JsonKey(name: 'defaultSortingOrder', required: true)
    required String defaultSortingOrder,

    /// Hide vote counts until voted
    @JsonKey(name: 'hideVoteCountUntilVoted', defaultValue: false)
    @Default(false)
    bool hideVoteCountUntilVoted,
  }) = _OrganizationSettings;

  factory OrganizationSettings.fromJson(Map<String, Object?> json) =>
      _$OrganizationSettingsFromJson(json);
}
