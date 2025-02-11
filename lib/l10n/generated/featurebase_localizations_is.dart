import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Icelandic (`is`).
class FeaturebaseLocalizationsIs extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsIs([String locale = 'is']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'greinar',
      one: 'grein',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Höfundur: $author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return 'Síðasta uppfærsla $daysAgo';
  }

  @override
  String get failedToLoad => 'Ekki tókst að hlaða';

  @override
  String get tryAgainLater => 'Reyndu aftur síðar';

  @override
  String get noResultsFound => 'Engin niðurstöður fundust';

  @override
  String get changelog => 'Breytingaskrá';

  @override
  String changelogDescription(String appName) {
    return 'Nýjar uppfærslur og endurbætur á $appName.';
  }

  @override
  String get noChangelogsFound => 'Engar breytingaskrár fundust';

  @override
  String get noMoreChangelogs => 'Engar fleiri breytingaskrár';
}
