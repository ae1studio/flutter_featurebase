part of featurebase;

/// Observer that tracks navigation stack state changes and reports whether
/// the current route is at the root of the navigation stack.
class NavigationStateObserver extends NavigatorObserver {
  NavigationStateObserver({
    required this.navigatorKey,
    required this.onStackStateChanged,
  });
  final GlobalKey<NavigatorState> navigatorKey;

  /// Callback fired when the navigation stack state changes.
  /// Parameter [isAtRoot] indicates if the current route is at the root of the stack.
  final void Function(bool isAtRoot) onStackStateChanged;
  void _updateState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final canPop = navigatorKey.currentState?.canPop() ?? false;
      onStackStateChanged(!canPop);
    });
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    _updateState();
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    _updateState();
  }
}

Color _calculateTextColor(Color background) {
  return ThemeData.estimateBrightnessForColor(background) == Brightness.light
      ? Colors.black
      : Colors.white;
}

Color _fbColorStringToColor(String color, BuildContext context) {
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

String _langCodeToName(Locale lang) {
  switch (_getLocale(lang)) {
    case 'en':
      return 'English';
    case 'nl':
      return 'Dutch';
    case 'bn':
      return 'Bengali';
    case 'bs':
      return 'Bosnian';
    case 'pt_BR':
      return 'Brazilian Portuguese';
    case 'bg':
      return 'Bulgarian';
    case 'ca':
      return 'Catalan';
    case 'hr':
      return 'Croatian';
    case 'cs':
      return 'Czech';
    case 'da':
      return 'Danish';
    case 'et':
      return 'Estonian';
    case 'fi':
      return 'Finnish';
    case 'fr':
      return 'French';
    case 'de':
      return 'German';
    case 'el':
      return 'Greek';
    case 'hi':
      return 'Hindi';
    case 'hu':
      return 'Hungarian';
    case 'id':
      return 'Indonesian';
    case 'it':
      return 'Italian';
    case 'ja':
      return 'Japanese';
    case 'ko':
      return 'Korean';
    case 'lv':
      return 'Latvian';
    case 'lt':
      return 'Lithuanian';
    case 'ms':
      return 'Malay';
    case 'mn':
      return 'Mongolian';
    case 'no':
      return 'Norwegian';
    case 'pl':
      return 'Polish';
    case 'pt':
      return 'Portuguese';
    case 'ro':
      return 'Romanian';
    case 'ru':
      return 'Russian';
    case 'sr':
      return 'Serbian';
    case 'sl':
      return 'Slovenian';
    case 'es':
      return 'Spanish';
    case 'sw':
      return 'Swahili';
    case 'sv':
      return 'Swedish';
    case 'th':
      return 'Thai';
    case 'zh_CN':
      return 'Chinese Simplified';
    case 'zh_TW':
      return 'Chinese Traditional';
    case 'tr':
      return 'Turkish';
    case 'uk':
      return 'Ukrainian';
    case 'vi':
      return 'Vietnamese';
    default:
      return _getLocale(lang);
  }
}

String _getLocale(Locale locale) {
  if (locale.countryCode != null) {
    return '${locale.languageCode}_${locale.countryCode!}';
  }
  return locale.languageCode;
}

Color _darkenColor(Color color, {double amount = .1}) {
  final hsl = HSLColor.fromColor(color);
  final darkened = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
  return darkened.toColor();
}

_callHaptic() {
  if (!kIsWeb && _fbService.isHapticEnabled) {
    if (Platform.isAndroid || Platform.isIOS) {
      HapticFeedback.selectionClick();
    }
  }
}
