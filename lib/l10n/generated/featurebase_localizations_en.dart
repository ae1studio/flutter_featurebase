import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class FeaturebaseLocalizationsEn extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsEn([String locale = 'en']) : super(locale);

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
    return 'Written by $author';
  }

  @override
  String get failedToLoad => 'Failed to load';

  @override
  String get tryAgainLater => 'Try again later';

  @override
  String get noResultsFound => 'No results found';

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
