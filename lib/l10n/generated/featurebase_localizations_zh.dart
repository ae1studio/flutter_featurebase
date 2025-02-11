import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class FeaturebaseLocalizationsZh extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '篇文章',
      one: '篇文章',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return '作者：$author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return '最後更新 $daysAgo';
  }

  @override
  String get failedToLoad => '載入失敗';

  @override
  String get tryAgainLater => '請稍後再試';

  @override
  String get noResultsFound => '沒有找到結果';

  @override
  String get changelog => '更新日誌';

  @override
  String changelogDescription(String appName) {
    return '$appName 的最新更新和改進';
  }

  @override
  String get noChangelogsFound => '找不到更新日誌';

  @override
  String get noMoreChangelogs => '沒有更多更新日誌';
}

/// The translations for Chinese, using the Han script (`zh_Hans`).
class FeaturebaseLocalizationsZhHans extends FeaturebaseLocalizationsZh {
  FeaturebaseLocalizationsZhHans() : super('zh_Hans');

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '篇文章',
      one: '篇文章',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return '作者：$author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return '最后更新 $daysAgo';
  }

  @override
  String get failedToLoad => '加载失败';

  @override
  String get tryAgainLater => '请稍后重试';

  @override
  String get noResultsFound => '没有找到结果';

  @override
  String get changelog => '更新日志';

  @override
  String changelogDescription(String appName) {
    return '$appName的新更新和改进。';
  }

  @override
  String get noChangelogsFound => '未找到更新日志';

  @override
  String get noMoreChangelogs => '没有更多更新日志';
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class FeaturebaseLocalizationsZhHant extends FeaturebaseLocalizationsZh {
  FeaturebaseLocalizationsZhHant() : super('zh_Hant');

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '篇文章',
      one: '篇文章',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return '作者：$author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return '最後更新 $daysAgo';
  }

  @override
  String get failedToLoad => '載入失敗';

  @override
  String get tryAgainLater => '請稍後再試';

  @override
  String get noResultsFound => '沒有找到結果';

  @override
  String get changelog => '更新日誌';

  @override
  String changelogDescription(String appName) {
    return '$appName 的最新更新和改進。';
  }

  @override
  String get noChangelogsFound => '找不到更新日誌';

  @override
  String get noMoreChangelogs => '沒有更多更新日誌';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class FeaturebaseLocalizationsZhTw extends FeaturebaseLocalizationsZh {
  FeaturebaseLocalizationsZhTw() : super('zh_TW');

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '篇文章',
      one: '篇文章',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return '作者：$author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return '最後更新 $daysAgo';
  }

  @override
  String get failedToLoad => '載入失敗';

  @override
  String get tryAgainLater => '請稍後再試';

  @override
  String get noResultsFound => '沒有找到結果';

  @override
  String get changelog => '更新日誌';

  @override
  String changelogDescription(String appName) {
    return '$appName 的最新更新和改進。';
  }

  @override
  String get noChangelogsFound => '找不到更新日誌';

  @override
  String get noMoreChangelogs => '沒有更多更新日誌';
}
