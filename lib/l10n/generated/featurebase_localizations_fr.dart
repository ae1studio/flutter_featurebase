import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class FeaturebaseLocalizationsFr extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'articles',
      one: 'article',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Rédigé par $author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return 'Last updated $daysAgo';
  }

  @override
  String get failedToLoad => 'Échec du chargement';

  @override
  String get tryAgainLater => 'Réessayez plus tard';

  @override
  String get noResultsFound => 'Aucun résultat trouvé';

  @override
  String get changelog => 'Journal des modifications';

  @override
  String changelogDescription(String appName) {
    return 'Nouvelles mises à jour et améliorations de $appName.';
  }

  @override
  String get noChangelogsFound => 'Aucun journal des modifications trouvé';

  @override
  String get noMoreChangelogs => 'Plus de journaux des modifications';
}
