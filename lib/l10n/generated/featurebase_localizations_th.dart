import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class FeaturebaseLocalizationsTh extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'บทความ',
      one: 'บทความ',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'เขียนโดย $author';
  }

  @override
  String get failedToLoad => 'โหลดไม่สำเร็จ';

  @override
  String get tryAgainLater => 'กรุณาลองใหม่อีกครั้งในภายหลัง';

  @override
  String get noResultsFound => 'ไม่พบผลลัพธ์';

  @override
  String get changelog => 'บันทึกการเปลี่ยนแปลง';

  @override
  String changelogDescription(String appName) {
    return 'การอัปเดตและการปรับปรุงใหม่สำหรับ $appName';
  }

  @override
  String get noChangelogsFound => 'ไม่พบบันทึกการเปลี่ยนแปลง';

  @override
  String get noMoreChangelogs => 'ไม่มีบันทึกการเปลี่ยนแปลงเพิ่มเติม';
}
