import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class FeaturebaseLocalizationsFa extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'مقاله‌ها',
      one: 'مقاله',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'نوشته شده توسط $author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return 'Last updated $daysAgo';
  }

  @override
  String get failedToLoad => 'خطا در بارگذاری';

  @override
  String get tryAgainLater => 'لطفاً بعداً دوباره امتحان کنید';

  @override
  String get noResultsFound => 'نتیجه‌ای یافت نشد';

  @override
  String get changelog => 'تغییرات';

  @override
  String changelogDescription(String appName) {
    return 'به‌روزرسانی‌ها و بهبودهای جدید $appName';
  }

  @override
  String get noChangelogsFound => 'تغییراتی یافت نشد';

  @override
  String get noMoreChangelogs => 'تغییرات بیشتری وجود ندارد';
}
