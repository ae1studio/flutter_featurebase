// ignore: unnecessary_library_name
library featurebase;

import 'dart:ui' as ui;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:custom_top_navigator_plus/custom_navigation.dart';
import 'package:dio/dio.dart';
import 'package:easy_infinite_pagination/easy_infinite_pagination.dart';
import 'package:featurebase/l10n/generated/featurebase_localizations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:searchfield/searchfield.dart';
import 'package:share_plus/share_plus.dart';
import 'package:styled_text/styled_text.dart';
import 'package:universal_io/io.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:fb_core/fb_core.dart' as fb;

//UI
part 'ui/profile/profile.dart';
part 'ui/profile/widgets/activity_item.dart';
part 'ui/changelog/changelog.dart';
part 'ui/changelog/widgets/changelog_card.dart';
part 'ui/feedback/feedback.dart';
part 'ui/feedback/post/post.dart';
part 'ui/help_center/help_center.dart';
part 'ui/help_center/collection/collection.dart';
part 'ui/help_center/article/article.dart';
part 'ui/help_center/widgets/collection_card.dart';
part 'ui/help_center/widgets/navbar_expanding_collection.dart';
part 'ui/help_center/widgets/navbar_popup.dart';
part 'ui/widgets/authors_image_stack.dart';
part 'ui/widgets/icon.dart';
part 'ui/widgets/safe_cachednetworkimage.dart';
part 'ui/widgets/language_picker.dart';
part 'ui/widgets/error_loading_widget.dart';
part 'ui/widgets/render_html_widget.dart';
part 'ui/widgets/post_card.dart';
part 'ui/widgets/post_status_badge.dart';
part 'ui/widgets/fade_tap_widget.dart';
part 'ui/widgets/post_popup.dart';
part 'ui/widgets/comment_section.dart';
part 'ui/widgets/comment_box.dart';

//Providers
part 'providers/provider.dart';
part 'providers/service.dart';
part 'providers/icons.dart';

//Other
part 'actions.dart';
part 'utils.dart';
part 'models/sso_auth.dart';
part 'featurebase.g.dart';
