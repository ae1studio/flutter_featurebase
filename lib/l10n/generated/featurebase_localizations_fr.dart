import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class FeaturebaseLocalizationsFr extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsFr([String locale = 'fr']) : super(locale);

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
    return 'Rédigé par $author';
  }
}
