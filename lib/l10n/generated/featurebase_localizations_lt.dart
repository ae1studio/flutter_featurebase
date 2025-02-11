import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class FeaturebaseLocalizationsLt extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'straipsniai',
      one: 'straipsnis',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Autorius: $author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return 'Last updated $daysAgo';
  }

  @override
  String get failedToLoad => 'Nepavyko įkelti';

  @override
  String get tryAgainLater => 'Pabandykite vėliau';

  @override
  String get noResultsFound => 'Nėra rezultatų';

  @override
  String get changelog => 'Pakeitimų žurnalas';

  @override
  String changelogDescription(String appName) {
    return 'Nauji $appName atnaujinimai ir patobulinimai.';
  }

  @override
  String get noChangelogsFound => 'Pakeitimų žurnalas tuščias';

  @override
  String get noMoreChangelogs => 'Daugiau pakeitimų nėra';
}
