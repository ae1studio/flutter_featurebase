import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class FeaturebaseLocalizationsRu extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'статей',
      many: 'статей',
      few: 'статьи',
      one: 'статья',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Автор: $author';
  }

  @override
  String get failedToLoad => 'Не удалось загрузить';

  @override
  String get tryAgainLater => 'Повторите попытку позже';

  @override
  String get noResultsFound => 'Ничего не найдено';

  @override
  String get changelog => 'История изменений';

  @override
  String changelogDescription(String appName) {
    return 'Новые обновления и улучшения $appName';
  }

  @override
  String get noChangelogsFound => 'История изменений не найдена';

  @override
  String get noMoreChangelogs => 'Больше обновлений нет';
}
