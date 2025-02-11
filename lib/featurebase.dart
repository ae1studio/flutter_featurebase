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
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:searchfield/searchfield.dart';
import 'package:styled_text/styled_text.dart';
import 'package:universal_io/io.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'api/models/_models.dart' as fb;

//API
part 'api/featurebase.dart';
part 'api/endpoint_base.dart';
part 'api/endpoints/help_center.dart';
part 'api/endpoints/changelog.dart';
part 'api/endpoints/organization.dart';

//UI
part 'ui/help_center/help_center.dart';
part 'ui/changelog/changelog.dart';
part 'ui/changelog/widgets/changelog_card.dart';
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

//Providers
part 'providers/service.dart';
part 'providers/icons.dart';
part 'providers/help_center.dart';
part 'providers/changelog.dart';
part 'providers/organization.dart';

//Other
part 'actions.dart';
part 'utils.dart';

part 'featurebase.g.dart';
