part of featurebase;

/// Open the Help Center
void openHelpCenter({
  /// Logo centered in the Appbar
  required Widget logo,

  /// Featurebase url (example: https://help.featurebase.app)
  required String helpCenterUrl,

  /// Primary color used
  required Color primaryColor,

  /// Text Color
  Color textColor = Colors.black,

  /// Background color
  Color? backgroundColor,

  /// Search fill color
  Color? searchFillColor,

  /// Hide Authors
  bool hideAuthors = false,

  /// Show Search Bar
  bool showSearchBar = true,

  /// Default Locale (default: en)
  Locale defaultLocale = const Locale('en'),

  /// BuildContext
  required BuildContext context,
}) {
  Navigator.of(context).push(
    MaterialPageRoute<void>(
      builder: (BuildContext context) => ProviderScope(
        child: HelpCenterView(
          logo: logo,
          url: helpCenterUrl,
          primaryColor: primaryColor,
          textColor: textColor,
          backgroundColor: backgroundColor,
          hideAuthors: hideAuthors,
          searchFillColor: searchFillColor,
          defaultLocale: defaultLocale,
          showSearchBar: showSearchBar,
        ),
      ),
    ),
  );
}

/// Open the Changelog
void openChangelog({
  /// Logo centered in the Appbar
  required Widget logo,

  /// Featurebase url (example: https://feedback.featurebase.app)
  required String feedbackUrl,

  /// App Name
  required String appName,

  /// Primary color used
  required Color primaryColor,

  /// Text Color
  Color textColor = Colors.black,

  /// Background color
  Color? backgroundColor,

  /// Default Locale (default: en)
  Locale defaultLocale = const Locale('en'),

  /// BuildContext
  required BuildContext context,
}) {
  Navigator.of(context).push(
    MaterialPageRoute<void>(
      builder: (BuildContext context) => ProviderScope(
        child: ChangelogView(
          logo: logo,
          url: feedbackUrl,
          primaryColor: primaryColor,
          textColor: textColor,
          backgroundColor: backgroundColor,
          defaultLocale: defaultLocale,
          appName: appName,
        ),
      ),
    ),
  );
}

/// Open the Knowledge Base
@Deprecated('Use openHelpCenter instead')
void openKnowledgeBase({
  /// Logo centered in the Appbar
  required Widget logo,

  /// Featurebase url (example: https://help.featurebase.app)
  required String knowledgeBaseUrl,

  /// Primary color used
  required Color primaryColor,

  /// Text Color
  Color textColor = Colors.black,

  /// Background color
  Color? backgroundColor,

  /// Hide Authors
  bool hideAuthors = false,

  /// BuildContext
  required BuildContext context,
}) {
  Navigator.of(context).push(
    MaterialPageRoute<void>(
      builder: (BuildContext context) => ProviderScope(
        child: HelpCenterView(
          logo: logo,
          url: knowledgeBaseUrl,
          primaryColor: primaryColor,
          textColor: textColor,
          backgroundColor: backgroundColor,
          hideAuthors: hideAuthors,
        ),
      ),
    ),
  );
}
