import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class FeaturebaseLocalizationsRo extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'articole',
      one: 'articol',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Scris de $author';
  }

  @override
  String get failedToLoad => 'Încărcare eșuată';

  @override
  String get tryAgainLater => 'Încercați din nou mai târziu';

  @override
  String get noResultsFound => 'Nu s-au găsit rezultate';
}
