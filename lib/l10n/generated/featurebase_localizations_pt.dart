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
  String lastUpdated(String daysAgo) {
    return 'Última atualização $daysAgo';
  }

  @override
  String get failedToLoad => 'Falha ao carregar';

  @override
  String get tryAgainLater => 'Tente novamente mais tarde';

  @override
  String get noResultsFound => 'Nenhum resultado encontrado';

  @override
  String get changelog => 'Histórico de alterações';

  @override
  String changelogDescription(String appName) {
    return 'Novas atualizações e melhorias do $appName.';
  }

  @override
  String get noChangelogsFound => 'Nenhum histórico de alterações encontrado';

  @override
  String get noMoreChangelogs => 'Não há mais históricos de alterações';
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
  String lastUpdated(String daysAgo) {
    return 'Última atualização $daysAgo';
  }

  @override
  String get failedToLoad => 'Falha ao carregar';

  @override
  String get tryAgainLater => 'Tente novamente mais tarde';

  @override
  String get noResultsFound => 'Nenhum resultado encontrado';

  @override
  String get changelog => 'Histórico de alterações';

  @override
  String changelogDescription(String appName) {
    return 'Novas atualizações e melhorias do $appName.';
  }

  @override
  String get noChangelogsFound => 'Nenhum histórico encontrado';

  @override
  String get noMoreChangelogs => 'Não há mais históricos';
}
