import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class FeaturebaseLocalizationsUk extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'статті',
      many: 'статей',
      few: 'статті',
      one: 'стаття',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Автор: $author';
  }

  @override
  String get failedToLoad => 'Не вдалося завантажити';

  @override
  String get tryAgainLater => 'Спробуйте пізніше';

  @override
  String get noResultsFound => 'Нічого не знайдено';

  @override
  String get changelog => 'Історія змін';

  @override
  String changelogDescription(String appName) {
    return 'Нові оновлення та покращення $appName.';
  }

  @override
  String get noChangelogsFound => 'Історію змін не знайдено';

  @override
  String get noMoreChangelogs => 'Більше змін немає';
}
