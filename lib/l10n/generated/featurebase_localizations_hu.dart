import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class FeaturebaseLocalizationsHu extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'cikk',
      one: 'cikk',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Írta: $author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return 'Last updated $daysAgo';
  }

  @override
  String get failedToLoad => 'Betöltés sikertelen';

  @override
  String get tryAgainLater => 'Próbálja újra később';

  @override
  String get noResultsFound => 'Nem található';

  @override
  String get changelog => 'Változásnapló';

  @override
  String changelogDescription(String appName) {
    return 'Új frissítések és fejlesztések a(z) $appName alkalmazásban.';
  }

  @override
  String get noChangelogsFound => 'Nem található változásnapló';

  @override
  String get noMoreChangelogs => 'Nincs több változásnapló';
}
