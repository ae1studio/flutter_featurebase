part of featurebase;

class _FeaturebaseApi extends _FeaturebaseApiBase {
  _FeaturebaseApi.from({
    // ignore: unused_element
    super.baseUrl,
  }) : super.from();
}

abstract class _FeaturebaseApiBase {
  static String _baseUrl = "https://help.featurebase.app";
  String get baseApiUrl => _baseUrl;

  final Dio _dio = Dio(
    BaseOptions(
      receiveTimeout: const Duration(seconds: 50),
    ),
  );
  Dio get dio => _dio;

  late _HelpCenterEnd _helpCenter;
  _HelpCenterEnd get helpCenter => _helpCenter;

  late _ChangelogEnd _changelog;
  _ChangelogEnd get changelog => _changelog;

  _FeaturebaseApiBase.from({
    String baseUrl = "https://help.featurebase.app",
  }) {
    _baseUrl = baseUrl;
    _dio.options.baseUrl = '$_baseUrl/api/v1';

    _helpCenter = _HelpCenterEnd(this);
    _changelog = _ChangelogEnd(this);
  }
}
