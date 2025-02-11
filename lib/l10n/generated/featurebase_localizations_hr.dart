import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class FeaturebaseLocalizationsHr extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'članaka',
      one: 'članak',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Napisao/la $author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return 'Zadnje ažurirano $daysAgo';
  }

  @override
  String get failedToLoad => 'Neuspjelo učitavanje';

  @override
  String get tryAgainLater => 'Pokušajte ponovno kasnije';

  @override
  String get noResultsFound => 'Nije pronađeno';

  @override
  String get changelog => 'Povijest promjena';

  @override
  String changelogDescription(String appName) {
    return 'Nova ažuriranja i poboljšanja za $appName.';
  }

  @override
  String get noChangelogsFound => 'Nema pronađenih promjena';

  @override
  String get noMoreChangelogs => 'Nema više promjena';
}
