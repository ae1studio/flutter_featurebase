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

  @override
  String get failedToLoad => 'འཇུག་འདྲེན་བྱེད་མ་ཐུབ།';

  @override
  String get tryAgainLater => 'ཏོག་ཙམ་རྗེས་ལ་ཡང་བསྐྱར་ཚོད་ལྟ་བྱོས།';

  @override
  String get noResultsFound =>
      'རིམ་པ་སྤྱི་འགྲེལ་འབུམ་མི་མཐུན་བསྐྱར་ཚོད་ལྟ་བྱོས།';

  @override
  String get changelog => 'འགྱུར་བཅོས་ཐོ།';

  @override
  String changelogDescription(String appName) {
    return '$appName ནང་གི་གསར་སྣོན་དང་ལེགས་སྒྲིག';
  }

  @override
  String get noChangelogsFound => 'འགྱུར་བཅོས་ཐོ་གང་ཡང་མ་རྙེད།';

  @override
  String get noMoreChangelogs => 'འགྱུར་བཅོས་ཐོ་གཞན་མེད།';
}
