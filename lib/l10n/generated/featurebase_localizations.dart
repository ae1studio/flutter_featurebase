import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of FeaturebaseLocalizations
/// returned by `FeaturebaseLocalizations.of(context)`.
///
/// Applications need to include `FeaturebaseLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/featurebase_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: FeaturebaseLocalizations.localizationsDelegates,
///   supportedLocales: FeaturebaseLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the FeaturebaseLocalizations.supportedLocales
/// property.
abstract class FeaturebaseLocalizations {
  FeaturebaseLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static FeaturebaseLocalizations of(BuildContext context) {
    return Localizations.of<FeaturebaseLocalizations>(
        context, FeaturebaseLocalizations)!;
  }

  static const LocalizationsDelegate<FeaturebaseLocalizations> delegate =
      _FeaturebaseLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @countArticles.
  ///
  /// In en, this message translates to:
  /// **'<strong>{count}</strong> {count, plural, one{article} other{articles}}'**
  String countArticles(int count);

  /// No description provided for @writtenBy.
  ///
  /// In en, this message translates to:
  /// **'Written by {author}'**
  String writtenBy(String author);
}

class _FeaturebaseLocalizationsDelegate
    extends LocalizationsDelegate<FeaturebaseLocalizations> {
  const _FeaturebaseLocalizationsDelegate();

  @override
  Future<FeaturebaseLocalizations> load(Locale locale) {
    return SynchronousFuture<FeaturebaseLocalizations>(
        lookupFeaturebaseLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_FeaturebaseLocalizationsDelegate old) => false;
}

FeaturebaseLocalizations lookupFeaturebaseLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return FeaturebaseLocalizationsEn();
  }

  throw FlutterError(
      'FeaturebaseLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
