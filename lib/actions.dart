part of featurebase;

/// Open the Help Center
void openHelpCenter({
  /// Logo centered in the Appbar
  required Widget logo,

  /// Featurebase organization name (example: featurebase)
  required String organizationName,

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

  /// Enable Haptic Feedback
  bool enableHapticFeedback = true,

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
          organizationName: organizationName,
          primaryColor: primaryColor,
          textColor: textColor,
          backgroundColor: backgroundColor,
          hideAuthors: hideAuthors,
          searchFillColor: searchFillColor,
          defaultLocale: defaultLocale,
          showSearchBar: showSearchBar,
          enableHapticFeedback: enableHapticFeedback,
        ),
      ),
    ),
  );
}

/// Open the Changelog
void openChangelog({
  /// Logo centered in the Appbar
  required Widget logo,

  /// Featurebase organization name (example: featurebase)
  required String organizationName,

  /// App Name
  required String appName,

  /// Primary color used
  required Color primaryColor,

  /// Text Color
  Color textColor = Colors.black,

  /// Background color
  Color? backgroundColor,

  /// Enable Haptic Feedback
  bool enableHapticFeedback = true,

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
          organizationName: organizationName,
          primaryColor: primaryColor,
          textColor: textColor,
          backgroundColor: backgroundColor,
          defaultLocale: defaultLocale,
          appName: appName,
          enableHapticFeedback: enableHapticFeedback,
        ),
      ),
    ),
  );
}
