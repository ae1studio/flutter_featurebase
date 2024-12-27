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
  String get failedToLoad => '読み込みに失敗しました';

  @override
  String get tryAgainLater => '後でもう一度お試しください';
}
