import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class FeaturebaseLocalizationsCs extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'články',
      one: 'článek',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Napsal $author';
  }
}
