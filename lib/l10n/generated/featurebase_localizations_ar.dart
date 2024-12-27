import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class FeaturebaseLocalizationsAr extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'مقالات',
      one: 'مقالة',
    );
    return '$_temp0 <strong>$count</strong>';
  }

  @override
  String writtenBy(String author) {
    return 'مكتوب بواسطة $author';
  }
}
