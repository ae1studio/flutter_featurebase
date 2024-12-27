import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class FeaturebaseLocalizationsBg extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'статии',
      one: 'статия',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Написано от $author';
  }

  @override
  String get failedToLoad => 'Грешка при зареждането';

  @override
  String get tryAgainLater => 'Опитайте отново по-късно';
}
