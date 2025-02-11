import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class FeaturebaseLocalizationsNl extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'artikelen',
      one: 'artikel',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Geschreven door $author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return 'Laatst bijgewerkt $daysAgo';
  }

  @override
  String get failedToLoad => 'Laden mislukt';

  @override
  String get tryAgainLater => 'Probeer het later opnieuw.';

  @override
  String get noResultsFound => 'Geen resultaten gevonden';

  @override
  String get changelog => 'Wijzigingslogboek';

  @override
  String changelogDescription(String appName) {
    return 'Nieuwe updates en verbeteringen voor $appName.';
  }

  @override
  String get noChangelogsFound => 'Geen wijzigingslogboeken gevonden';

  @override
  String get noMoreChangelogs => 'Geen wijzigingslogboeken meer';
}
