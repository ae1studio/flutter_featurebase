import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class FeaturebaseLocalizationsHi extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'लेख',
      one: 'लेख',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return '$author द्वारा लिखित';
  }
}
