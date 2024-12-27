import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class FeaturebaseLocalizationsSr extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsSr([String locale = 'sr']) : super(locale);

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
    return 'Autor: $author';
  }

  @override
  String get failedToLoad => 'Učitavanje nije uspelo';

  @override
  String get tryAgainLater => 'Pokušajte ponovo kasnije';
}
