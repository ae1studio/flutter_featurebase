import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class FeaturebaseLocalizationsMs extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'artikel',
      one: 'artikel',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Ditulis oleh $author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return 'Last updated $daysAgo';
  }

  @override
  String get failedToLoad => 'Gagal dimuat';

  @override
  String get tryAgainLater => 'Sila cuba lagi kemudian';

  @override
  String get noResultsFound => 'Tidak ada hasil';

  @override
  String get changelog => 'Log perubahan';

  @override
  String changelogDescription(String appName) {
    return 'Kemaskini dan penambahbaikan terbaru untuk $appName.';
  }

  @override
  String get noChangelogsFound => 'Tiada log perubahan dijumpai';

  @override
  String get noMoreChangelogs => 'Tiada lagi log perubahan';
}
