import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class FeaturebaseLocalizationsFi extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'artikkeleita',
      one: 'artikkeli',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Kirjoitettu $author';
  }

  @override
  String get failedToLoad => 'Lataus epäonnistui';

  @override
  String get tryAgainLater => 'Yritä myöhemmin uudelleen';
}
