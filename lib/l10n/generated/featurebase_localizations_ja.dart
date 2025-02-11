import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class FeaturebaseLocalizationsJa extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '記事',
      one: '記事',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return '著者: $author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return 'Last updated $daysAgo';
  }

  @override
  String get failedToLoad => '読み込みに失敗しました';

  @override
  String get tryAgainLater => '後でもう一度お試しください';

  @override
  String get noResultsFound => '結果が見つかりません';

  @override
  String get changelog => '更新履歴';

  @override
  String changelogDescription(String appName) {
    return '$appNameの新機能と改善点';
  }

  @override
  String get noChangelogsFound => '更新履歴が見つかりません';

  @override
  String get noMoreChangelogs => 'これ以上の更新履歴はありません';
}
