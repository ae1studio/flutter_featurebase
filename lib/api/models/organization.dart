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

    /// The widgets of the organization
    @JsonKey(name: 'widget') AIOWidget? widget,

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
