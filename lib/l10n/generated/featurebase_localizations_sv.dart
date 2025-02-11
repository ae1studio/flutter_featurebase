import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class FeaturebaseLocalizationsSv extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'artiklar',
      one: 'artikel',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Skriven av $author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return 'Last updated $daysAgo';
  }

  @override
  String get failedToLoad => 'Det gick inte att ladda';

  @override
  String get tryAgainLater => 'Försök igen senare';

  @override
  String get noResultsFound => 'Inga resultat hittades';

  @override
  String get changelog => 'Ändringslogg';

  @override
  String changelogDescription(String appName) {
    return 'Nya uppdateringar och förbättringar i $appName.';
  }

  @override
  String get noChangelogsFound => 'Inga ändringsloggar hittades';

  @override
  String get noMoreChangelogs => 'Inga fler ändringsloggar';
}
