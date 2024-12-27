import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class FeaturebaseLocalizationsId extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsId([String locale = 'id']) : super(locale);

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
  String get failedToLoad => 'Gagal memuat';

  @override
  String get tryAgainLater => 'Coba lagi nanti';
}
