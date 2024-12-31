import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class FeaturebaseLocalizationsSk extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'článkov',
      few: 'články',
      one: 'článok',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Napísal $author';
  }

  @override
  String get failedToLoad => 'Nepodarilo sa načítať';

  @override
  String get tryAgainLater => 'Skúste to znova neskôr';

  @override
  String get noResultsFound => 'Žiadne výsledky';

  @override
  String get changelog => 'História zmien';

  @override
  String changelogDescription(String appName) {
    return 'Nové aktualizácie a vylepšenia aplikácie $appName.';
  }

  @override
  String get noChangelogsFound => 'Neboli nájdené žiadne zmeny';

  @override
  String get noMoreChangelogs => 'Žiadne ďalšie zmeny';
}
