import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class FeaturebaseLocalizationsDa extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'artikler',
      one: 'artikel',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Skrevet af $author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return 'Last updated $daysAgo';
  }

  @override
  String get failedToLoad => 'Kunne ikke indlæse';

  @override
  String get tryAgainLater => 'Prøv igen senere';

  @override
  String get noResultsFound => 'Ingen resultater fundet';

  @override
  String get changelog => 'Ændringslog';

  @override
  String changelogDescription(String appName) {
    return 'Nye opdateringer og forbedringer til $appName.';
  }

  @override
  String get noChangelogsFound => 'Ingen ændringslogger fundet';

  @override
  String get noMoreChangelogs => 'Ikke flere ændringslogger';
}
