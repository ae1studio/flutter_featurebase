import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class FeaturebaseLocalizationsCs extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'články',
      one: 'článek',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Napsal $author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return 'Aktualizováno $daysAgo';
  }

  @override
  String get failedToLoad => 'Načítání selhalo';

  @override
  String get tryAgainLater => 'Zkuste to později';

  @override
  String get noResultsFound => 'Nebyly nalezeny žádné výsledky';

  @override
  String get changelog => 'Seznam změn';

  @override
  String changelogDescription(String appName) {
    return 'Nové aktualizace a vylepšení aplikace $appName.';
  }

  @override
  String get noChangelogsFound => 'Nebyly nalezeny žádné změny';

  @override
  String get noMoreChangelogs => 'Žádné další změny';
}
