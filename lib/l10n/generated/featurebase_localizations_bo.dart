import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tibetan (`bo`).
class FeaturebaseLocalizationsBo extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsBo([String locale = 'bo']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'རྩོམ་ཡིག',
      one: 'རྩོམ་ཡིག',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'བྲིས། $author';
  }
}
