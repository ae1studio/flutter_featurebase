import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class FeaturebaseLocalizationsEs extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'artículos',
      one: 'artículo',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Escrito por $author';
  }

  @override
  String get failedToLoad => 'Error al cargar';

  @override
  String get tryAgainLater => 'Inténtalo más tarde';

  @override
  String get noResultsFound => 'No se encontraron resultados';

  @override
  String get changelog => 'Registro de cambios';

  @override
  String changelogDescription(String appName) {
    return 'Nuevas actualizaciones y mejoras de $appName.';
  }

  @override
  String get noChangelogsFound => 'No se encontraron registros de cambios';

  @override
  String get noMoreChangelogs => 'No hay más registros de cambios';
}

/// The translations for Spanish Castilian, as used in Latin America and the Caribbean (`es_419`).
class FeaturebaseLocalizationsEs419 extends FeaturebaseLocalizationsEs {
  FeaturebaseLocalizationsEs419() : super('es_419');

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'artículos',
      one: 'artículo',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Escrito por $author';
  }

  @override
  String get failedToLoad => 'Error al cargar';

  @override
  String get tryAgainLater => 'Inténtalo más tarde';

  @override
  String get noResultsFound => 'No se encontraron resultados';

  @override
  String get changelog => 'Registro de cambios';

  @override
  String changelogDescription(String appName) {
    return 'Nuevas actualizaciones y mejoras de $appName.';
  }

  @override
  String get noChangelogsFound => 'No se encontraron registros de cambios';

  @override
  String get noMoreChangelogs => 'No hay más registros de cambios';
}
