part of featurebase;

class _FeaturebaseApi extends _FeaturebaseApiBase {
  _FeaturebaseApi.from({
    // ignore: unused_element
    super.organizationName,
  }) : super.from();
}

abstract class _FeaturebaseApiBase {
  static String _organizationName = "featurebase";
  String get organizationName => _organizationName;

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

  late _OrganizationEnd _organization;
  _OrganizationEnd get organization => _organization;

  late _FeedbackEnd _feedback;
  _FeedbackEnd get feedback => _feedback;

  late _UserEnd _user;
  _UserEnd get user => _user;

  _FeaturebaseApiBase.from({
    String organizationName = "featurebase",
  }) {
    _organizationName = organizationName;
    _dio.options.baseUrl = 'https://$organizationName.featurebase.app/api/v1';

    _helpCenter = _HelpCenterEnd(this);
    _changelog = _ChangelogEnd(this);
    _organization = _OrganizationEnd(this);
    _feedback = _FeedbackEnd(this);
    _user = _UserEnd(this);

    // dio.interceptors.add(
    //   InterceptorsWrapper(
    //     onError: (options, handler) {
    //       print('Request: ${options.response?.data}');
    //       return handler.next(options);
    //     },
    //     onRequest: (options, handler) {
    //       print('Request: ${options.path} ${options.queryParameters}');
    //       return handler.next(options);
    //     },
    //   ),
    // );
  }

  /// Set the access token for the posts API requests
  void setAccessToken(String accessToken) {
    _dio.options.headers['x-access-token'] = accessToken;
  }

  /// Set the CSRF token for the posts API requests
  void setCsrfToken(String csrfToken) {
    _dio.options.headers['x-csrf-token'] = csrfToken;
  }
}
