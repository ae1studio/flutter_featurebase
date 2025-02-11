import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class FeaturebaseLocalizationsRo extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'articole',
      one: 'articol',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Scris de $author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return 'Last updated $daysAgo';
  }

  @override
  String get failedToLoad => 'Încărcare eșuată';

  @override
  String get tryAgainLater => 'Încercați din nou mai târziu';

  @override
  String get noResultsFound => 'Nu s-au găsit rezultate';

  @override
  String get changelog => 'Jurnal de modificări';

  @override
  String changelogDescription(String appName) {
    return 'Actualizări și îmbunătățiri noi pentru $appName.';
  }

  @override
  String get noChangelogsFound => 'Nu s-au găsit jurnale de modificări';

  @override
  String get noMoreChangelogs => 'Nu mai există jurnale de modificări';
}
