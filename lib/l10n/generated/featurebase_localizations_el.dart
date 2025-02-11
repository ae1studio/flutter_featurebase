import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class FeaturebaseLocalizationsEl extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'άρθρα',
      one: 'ένα άρθρο',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Γραφτένο από $author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return 'Last updated $daysAgo';
  }

  @override
  String get failedToLoad => 'Αποτυχία φόρτωσης';

  @override
  String get tryAgainLater => 'Δοκιμάστε ξανά αργότερα';

  @override
  String get noResultsFound => 'Δεν βρέθηκαν αποτελέσματα';

  @override
  String get changelog => 'Ιστορικό αλλαγών';

  @override
  String changelogDescription(String appName) {
    return 'Νέες ενημερώσεις και βελτιώσεις στο $appName.';
  }

  @override
  String get noChangelogsFound => 'Δεν βρέθηκαν αλλαγές';

  @override
  String get noMoreChangelogs => 'Δεν υπάρχουν άλλες αλλαγές';
}
