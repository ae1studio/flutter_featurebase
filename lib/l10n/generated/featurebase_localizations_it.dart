import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class FeaturebaseLocalizationsIt extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'articoli',
      one: 'articolo',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Scritto da $author';
  }

  @override
  String get failedToLoad => 'Caricamento non riuscito';

  @override
  String get tryAgainLater => 'Riprova più tardi';
}
