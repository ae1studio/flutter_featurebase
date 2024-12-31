import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class FeaturebaseLocalizationsGl extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'artigos',
      one: 'artigo',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Escrito por $author';
  }

  @override
  String get failedToLoad => 'Erro ao cargar';

  @override
  String get tryAgainLater => 'Téntao de novo máis tarde';

  @override
  String get noResultsFound => 'Nunca se encontraron resultados';

  @override
  String get changelog => 'Rexistro de cambios';

  @override
  String changelogDescription(String appName) {
    return 'Novas actualizacións e melloras en $appName.';
  }

  @override
  String get noChangelogsFound => 'Non se atoparon rexistros de cambios';

  @override
  String get noMoreChangelogs => 'Non hai máis rexistros de cambios';
}
