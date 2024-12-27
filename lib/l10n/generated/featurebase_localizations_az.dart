import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class FeaturebaseLocalizationsAz extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'məqalə',
      one: 'məqalə',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return '$author tərəfindən yazılmışdır';
  }

  @override
  String get failedToLoad => 'Yükləmək alınmadı';

  @override
  String get tryAgainLater => 'Daha sonra yenidən cəhd edin';
}
