import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class FeaturebaseLocalizationsTr extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'makale',
      one: 'makale',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return '$author tarafından yazıldı';
  }

  @override
  String lastUpdated(String daysAgo) {
    return 'Last updated $daysAgo';
  }

  @override
  String get failedToLoad => 'Yüklenemedi';

  @override
  String get tryAgainLater => 'Daha sonra tekrar deneyin';

  @override
  String get noResultsFound => 'Sonuç bulunamadı';

  @override
  String get changelog => 'Değişiklik günlüğü';

  @override
  String changelogDescription(String appName) {
    return '$appName için yeni güncellemeler ve iyileştirmeler.';
  }

  @override
  String get noChangelogsFound => 'Değişiklik günlüğü bulunamadı';

  @override
  String get noMoreChangelogs => 'Başka değişiklik günlüğü yok';
}
