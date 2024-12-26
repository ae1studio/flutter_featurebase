part of featurebase;

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
        child: KnowledgeBaseView(
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

Color _calculateTextColor(Color background) {
  return ThemeData.estimateBrightnessForColor(background) == Brightness.light
      ? Colors.black
      : Colors.white;
}
