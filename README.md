# Featurebase (Unofficial) Flutter SDK

Featurebase is a

## Features

- [X] Knowledge base
- [ ] Feedback

## Get started

First you need to add the package to your `pubspec.yaml` file.

#### Usage

```dart
openHelpCenterPage(
    logo: SvgPicture.asset(
        'assets/logo.svg',
        height: 25,
        width: 25,
        colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
        ),
    ),
    url: 'https://help.featurebase.app',
    primaryColor: Theme.of(context).primaryColor,
    textColor: Colors.white,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    context: context,
);
```
