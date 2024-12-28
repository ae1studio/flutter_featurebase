import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class FeaturebaseLocalizationsHu extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'cikk',
      one: 'cikk',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Írta: $author';
  }

  @override
  String get failedToLoad => 'Betöltés sikertelen';

  @override
  String get tryAgainLater => 'Próbálja újra később';

  @override
  String get noResultsFound => 'Nem található';
}
