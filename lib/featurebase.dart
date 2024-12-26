// ignore: unnecessary_library_name
library featurebase;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:custom_top_navigator_plus/custom_navigation.dart';
import 'package:featurebase_dart/featurebase_dart.dart' as fb;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:hexcolor/hexcolor.dart';

part 'ui/help_center/help_center.dart';
part 'ui/help_center/collection/collection.dart';
part 'ui/help_center/article/article.dart';
part 'ui/help_center/widgets/collection_card.dart';
part 'ui/widgets/authors_image_stack.dart';
part 'ui/widgets/icon.dart';
part 'ui/widgets/safe_cachednetworkimage.dart';
part 'providers/service.dart';
part 'providers/icons.dart';
part 'utils.dart';
part 'providers/help_center.dart';
part 'featurebase.g.dart';
