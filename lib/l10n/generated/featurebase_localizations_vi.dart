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
  String get failedToLoad => 'Không thể tải';

  @override
  String get tryAgainLater => 'Vui lòng thử lại sau';
}
