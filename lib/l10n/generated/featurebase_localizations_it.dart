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

  @override
  String get noResultsFound => 'Nessun risultato trovato';

  @override
  String get changelog => 'Registro modifiche';

  @override
  String changelogDescription(String appName) {
    return 'Nuovi aggiornamenti e miglioramenti di $appName.';
  }

  @override
  String get noChangelogsFound => 'Nessun registro modifiche trovato';

  @override
  String get noMoreChangelogs => 'Non ci sono altri registri modifiche';
}
