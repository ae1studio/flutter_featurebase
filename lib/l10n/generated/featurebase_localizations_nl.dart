import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class FeaturebaseLocalizationsNl extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'artikelen',
      one: 'artikel',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Geschreven door $author';
  }

  @override
  String get failedToLoad => 'Laden mislukt';

  @override
  String get tryAgainLater => 'Probeer het later opnieuw.';

  @override
  String get noResultsFound => 'Geen resultaten gevonden';

  @override
  String get changelog => 'Changelog';

  @override
  String changelogDescription(String appName) {
    return 'New updates and improvements to $appName.';
  }

  @override
  String get noChangelogsFound => 'No changelogs found';

  @override
  String get noMoreChangelogs => 'No more changelogs';
}
