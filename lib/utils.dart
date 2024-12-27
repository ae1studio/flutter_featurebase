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
