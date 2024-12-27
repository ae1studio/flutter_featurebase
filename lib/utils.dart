part of featurebase;

Color _calculateTextColor(Color background) {
  return ThemeData.estimateBrightnessForColor(background) == Brightness.light
      ? Colors.black
      : Colors.white;
}

Color _getCalloutColor(String color, BuildContext context) {
  switch (color) {
    case 'Accent':
      return Theme.of(context).primaryColor;
    case 'Red':
      return Colors.redAccent;
    case 'Orange':
      return Colors.orangeAccent;
    case 'Yellow':
      return Colors.yellow;
    case 'Green':
      return Colors.green;
    case 'Sky':
      return Colors.lightBlue;
    case 'Teal':
      return Colors.teal;
    case 'Blue':
      return Colors.blue;
    case 'Indigo':
      return Colors.indigo;
    case 'Purple':
      return Colors.purple;
    case 'Pink':
      return Colors.pink;
    case 'Gray':
      return Colors.grey;
    default:
      return Theme.of(context).primaryColor;
  }
}

String _getLocale(Locale locale) {
  if (locale.countryCode != null) {
    return '${locale.languageCode}_${locale.countryCode!}';
  }
  return locale.languageCode;
}
