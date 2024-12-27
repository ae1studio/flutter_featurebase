# Featurebase (Unofficial) Flutter SDK

Featurebase is a Feedback, Help center, Changelog and Survey hub. Learn more at <https://featurebase.app>

## Features

- [X] Help center
- [ ] Feedback

## Platform Support

| Android |  iOS  | MacOS |  Web  | Linux | Windows |
| :-----: | :---: | :---: | :---: | :---: | :-----: |
|   ✅   |   ✅   |   ✅   |   ❌*  |   ✅    |    ✅   |

Some CORS issues cause it not to load on web (looking into a fix) *

## Get started

First you need to add the package to your `pubspec.yaml` file.

### Usage

Call the openHelpCenter function to open the panel.

```dart
openHelpCenter(
    logo: SvgPicture.asset(
        'assets/logo.svg',
        height: 25,
        width: 25,
        colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
        ),
    ),
    helpCenterUrl: 'https://help.featurebase.app', // Use your featurebase url
    primaryColor: Theme.of(context).primaryColor,
    textColor: Colors.white,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    context: context,
);
```

Example:

![Example Image](https://raw.githubusercontent.com/ae1dev/flutter_featurebase/refs/heads/main/docs/imgs/KnowledgeBaseExample.png)

## Localization

Add the FeaturebaseLocalizations delegate to your MaterialApp.

```dart
localizationsDelegates: [
    FeaturebaseLocalizations.delegate,
    //Any other delegates
],
```

Supported languages:

- Afrikaans
- Arabic
- Azerbaijani
- Belarusian
- Bulgarian
- Tibetan
- Catalan
- Czech
- Danish
- German
- German (Switzerland)
- Greek
- English
- Spanish (Spain)

## Contribution

Please file an issue if you find an issue or you can make a pull request.
