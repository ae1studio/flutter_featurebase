import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class FeaturebaseLocalizationsHr extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsHr([String locale = 'hr']) : super(locale);

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
    return 'Napisao/la $author';
  }
}
