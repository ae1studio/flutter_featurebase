import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class FeaturebaseLocalizationsSw extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'makala',
      one: 'makala',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Imeandikwa na $author';
  }

  @override
  String get failedToLoad => 'Imeshindwa kupakia';

  @override
  String get tryAgainLater => 'Jaribu tena baadaye';
}
