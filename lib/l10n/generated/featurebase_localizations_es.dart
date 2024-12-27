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
}
