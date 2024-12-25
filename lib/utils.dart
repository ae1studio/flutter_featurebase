part of featurebase;

void openHelpCenterPage({
  /// Logo centered in the Appbar
  required Widget logo,

  /// Featurebase url (example: https://help.featurebase.app)
  required String url,

  /// Primary color used
  required Color primaryColor,

  /// Text Color
  Color textColor = Colors.black,

  /// Background color
  Color? backgroundColor,

  /// BuildContext
  required BuildContext context,
}) {
  Navigator.of(context).push(
    MaterialPageRoute<void>(
      builder: (BuildContext context) => ProviderScope(
        child: _HelpCenterView(
          logo: logo,
          url: url,
          primaryColor: primaryColor,
          textColor: textColor,
          backgroundColor: backgroundColor,
        ),
      ),
    ),
  );
}
