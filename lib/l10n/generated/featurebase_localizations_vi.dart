import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class FeaturebaseLocalizationsVi extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'bài viết',
      one: 'bài viết',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Viết bởi $author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return 'Last updated $daysAgo';
  }

  @override
  String get failedToLoad => 'Không thể tải';

  @override
  String get tryAgainLater => 'Vui lòng thử lại sau';

  @override
  String get noResultsFound => 'Không tìm thấy kết quả';

  @override
  String get changelog => 'Nhật ký thay đổi';

  @override
  String changelogDescription(String appName) {
    return 'Cập nhật và cải tiến mới cho $appName.';
  }

  @override
  String get noChangelogsFound => 'Không tìm thấy nhật ký thay đổi';

  @override
  String get noMoreChangelogs => 'Không còn nhật ký thay đổi';
}
