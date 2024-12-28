import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Afrikaans (`af`).
class FeaturebaseLocalizationsAf extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsAf([String locale = 'af']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'artikels',
      one: 'artikel',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Geskryf deur $author';
  }

  @override
  String get failedToLoad => 'Kon nie laai nie';

  @override
  String get tryAgainLater => 'Probeer later weer';

  @override
  String get noResultsFound => 'Geen resultate gevind';
}
