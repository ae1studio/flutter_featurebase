import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class FeaturebaseLocalizationsNb extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'artikler',
      one: 'artikkel',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Skrevet av $author';
  }

  @override
  String get failedToLoad => 'Kunne ikke laste inn';

  @override
  String get tryAgainLater => 'Prøv igjen senere';

  @override
  String get noResultsFound => 'Ingen resultater funnet';
}
