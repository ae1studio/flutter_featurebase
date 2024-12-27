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
  String get failedToLoad => 'Αποτυχία φόρτωσης';

  @override
  String get tryAgainLater => 'Δοκιμάστε ξανά αργότερα';
}
