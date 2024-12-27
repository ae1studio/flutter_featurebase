import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class FeaturebaseLocalizationsSl extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'člankov',
      few: 'članki',
      one: 'članek',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Avtor: $author';
  }

  @override
  String get failedToLoad => 'Napaka pri nalaganju';

  @override
  String get tryAgainLater => 'Poskusite ponovno kasneje';
}
