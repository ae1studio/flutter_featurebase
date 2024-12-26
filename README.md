# Featurebase (Unofficial) Flutter SDK

Featurebase is a Feedback, Knowledge base, Changelog and Survey hub. Learn more at <https://featurebase.app>

## Features

- [X] Knowledge base
- [ ] Feedback

## Platform Support

| Android |  iOS  | MacOS |  Web  | Linux | Windows |
| :-----: | :---: | :---: | :---: | :---: | :-----: |
|   ✅   |   ✅   |   ✅   |   ❌*  |   ✅    |    ✅   |

Some CORS issues cause it not to load on web (looking into a fix) *

## Get started

First you need to add the package to your `pubspec.yaml` file.

### Usage

Call the openKnowledgeBase function to open the panel.

```dart
openKnowledgeBase(
    logo: SvgPicture.asset(
        'assets/logo.svg',
        height: 25,
        width: 25,
        colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
        ),
    ),
    knowledgeBaseUrl: 'https://help.featurebase.app', // Use your featurebase url
    primaryColor: Theme.of(context).primaryColor,
    textColor: Colors.white,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    context: context,
);
```
