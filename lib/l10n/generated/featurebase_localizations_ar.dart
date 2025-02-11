import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class FeaturebaseLocalizationsAr extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'مقالات',
      one: 'مقالة',
    );
    return '$_temp0 <strong>$count</strong>';
  }

  @override
  String writtenBy(String author) {
    return 'مكتوب بواسطة $author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return 'Last updated $daysAgo';
  }

  @override
  String get failedToLoad => 'فشل التحميل';

  @override
  String get tryAgainLater => 'حاول مرة أخرى لاحقاً';

  @override
  String get noResultsFound => 'لا يوجد نتائج';

  @override
  String get changelog => 'سجل التغييرات';

  @override
  String changelogDescription(String appName) {
    return 'التحديثات والتحسينات الجديدة في $appName';
  }

  @override
  String get noChangelogsFound => 'لم يتم العثور على سجلات تغيير';

  @override
  String get noMoreChangelogs => 'لا توجد المزيد من سجلات التغيير';
}
