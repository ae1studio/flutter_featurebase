## 0.9.1

- Updated dependencies.

## 0.8.1

- Added support for hiding author and date information from articles (read more here: <https://help.featurebase.app/en/articles/7797557-configuring-the-help-center#i4lbl8z37f1>).

## 0.8.0

- **BREAKING**: Replaced providing the feedback and help urls with just providing the `organizationName`.

## 0.7.3

- Added image error icon for external icons that fail to load.

## 0.7.2

- Switched haptic feedback to use `selectionClick` instead of `lightImpact`.

## 0.7.1

- Updated Dutch translations.

## 0.7.0

- Added haptic feedback support to buttons.
- Added support for custom search fill color in the Help Center panel with `searchFillColor`.
- **BREAKING**: Removed the deprecated `openKnowledgeBase` function, use `openHelpCenter` instead.

## 0.6.1

- Added platforms to `pubspec` to show the correct supported platforms.

## 0.6.0

- Added support for viewing Changelogs with the `openChangelog` function.
- Added mp4 video and iframe support for articles and changelogs.
- Improved HTML styling.

## 0.5.1

- Fix broken import.

## 0.5.0

- Added language picker in the navigation popup.

## 0.4.1

- Fixed article auggestion description being centered.

## 0.4.0

- Added basic title search (not as good as the website search that can search article title & body text). Can be disabled with `showSearchBar: false`.
- Fixed some fontWeights to match the site better.

## 0.3.1

- Switched navbar collection/article icons to use grey instead of the primary color.

## 0.3.0

- **BREAKING**: Added localization support (check README for how to setup).
- Added navbar popup with articles and nav links.
- Added support for Emoji/Image/Svg collection, article and nav items icons.
- Added `defaultLocale` option to set the locale of the articles/help center.
- Deprecated `openKnowledgeBase`, use `openHelpCenter` instead.

## 0.2.2

- Added support for swipe back page iOS gesture.
- Updated collection card to use Theme.of(context).cardColor.

## 0.2.1

- Fixed link text color issue.

## 0.2.0

- Added support for callouts in articles.
- Hide description area for collection cards if none.

## 0.1.0

- Added `hideAuthors` option to hide authors.

## 0.0.4

- Updated the README.md

## 0.0.3

- Change Dart SDK version.

## 0.0.2

- Now hides description area if there is not one set for the Help center.

## 0.0.1

Initial release.
