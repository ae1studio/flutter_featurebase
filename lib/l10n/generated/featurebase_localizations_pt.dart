import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class FeaturebaseLocalizationsPt extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsPt([String locale = 'pt']) : super(locale);

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
  String get failedToLoad => 'Falha ao carregar';

  @override
  String get tryAgainLater => 'Tente novamente mais tarde';

  @override
  String get noResultsFound => 'Nenhum resultado encontrado';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class FeaturebaseLocalizationsPtBr extends FeaturebaseLocalizationsPt {
  FeaturebaseLocalizationsPtBr() : super('pt_BR');

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
  String get failedToLoad => 'Falha ao carregar';

  @override
  String get tryAgainLater => 'Tente novamente mais tarde';

  @override
  String get noResultsFound => 'Nenhum resultado encontrado';
}
