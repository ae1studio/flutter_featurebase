part of featurebase;

class _OrganizationEnd extends _EndpointBase {
  @override
  String get _path => '/organization';

  _OrganizationEnd(super.api);

  /// Get the organization details
  Future<fb.Organization> get() async {
    final Map<String, Object?> map = (await dio.get(_path)).data;
    // Set the CSRF token
    _api.setCsrfToken(map['csrfToken'] as String);
    return fb.Organization.fromJson(map);
  }

  /// Get a list of user activities
  Future<List<fb.UserActivity>> userActivities(String id) async {
    final List<dynamic> list = (await dio.get(
      '$_path/trackedUsers/user',
      queryParameters: {
        'id': id,
      },
    ))
        .data;

    return list.map((e) => fb.UserActivity.fromJson(e)).toList();
  }
}
