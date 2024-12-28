import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class FeaturebaseLocalizationsCa extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'articles',
      one: 'article',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Escrit per $author';
  }

  @override
  String get failedToLoad => 'No s\'ha pogut carregar';

  @override
  String get tryAgainLater => 'Torna-ho a provar més tard';

  @override
  String get noResultsFound => 'No s\'ha trobat cap resultat';
}
