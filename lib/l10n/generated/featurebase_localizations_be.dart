import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Belarusian (`be`).
class FeaturebaseLocalizationsBe extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsBe([String locale = 'be']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'старонкі',
      one: 'старонка',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return '$author напісаў';
  }

  @override
  String get failedToLoad => 'Не атрымалася загрузіць';

  @override
  String get tryAgainLater => 'Паспрабуйце пазней';

  @override
  String get noResultsFound => 'Няма резултата';

  @override
  String get changelog => 'Спіс змен';

  @override
  String changelogDescription(String appName) {
    return 'Новыя абнаўленні і паляпшэнні ў $appName.';
  }

  @override
  String get noChangelogsFound => 'Спіс змен не знойдзены';

  @override
  String get noMoreChangelogs => 'Больш няма змен';
}
