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

  _FeaturebaseApiBase.from({
    String organizationName = "featurebase",
  }) {
    _organizationName = organizationName;
    _dio.options.baseUrl = 'https://$organizationName.featurebase.app/api/v1';

    _helpCenter = _HelpCenterEnd(this);
    _changelog = _ChangelogEnd(this);
    _organization = _OrganizationEnd(this);
  }
}
