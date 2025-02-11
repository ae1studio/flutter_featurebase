import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class FeaturebaseLocalizationsDe extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Artikel',
      one: 'Artikel',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Geschrieben von $author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return 'Last updated $daysAgo';
  }

  @override
  String get failedToLoad => 'Laden fehlgeschlagen';

  @override
  String get tryAgainLater => 'Versuchen Sie es später erneut';

  @override
  String get noResultsFound => 'Keine Ergebnisse gefunden';

  @override
  String get changelog => 'Änderungsprotokoll';

  @override
  String changelogDescription(String appName) {
    return 'Neue Updates und Verbesserungen für $appName.';
  }

  @override
  String get noChangelogsFound => 'Keine Änderungsprotokolle gefunden';

  @override
  String get noMoreChangelogs => 'Keine weiteren Änderungsprotokolle';
}

/// The translations for German, as used in Switzerland (`de_CH`).
class FeaturebaseLocalizationsDeCh extends FeaturebaseLocalizationsDe {
  FeaturebaseLocalizationsDeCh() : super('de_CH');

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Artikel',
      one: 'Artikel',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Geschrieben von $author';
  }

  @override
  String get failedToLoad => 'Laden fehlgeschlagen';

  @override
  String get tryAgainLater => 'Bitte später erneut versuchen';

  @override
  String get noResultsFound => 'Keine Ergebnisse gefunden';

  @override
  String get changelog => 'Änderungsprotokoll';

  @override
  String changelogDescription(String appName) {
    return 'Neue Updates und Verbesserungen für $appName.';
  }

  @override
  String get noChangelogsFound => 'Keine Änderungsprotokolle gefunden';

  @override
  String get noMoreChangelogs => 'Keine weiteren Änderungsprotokolle';
}
