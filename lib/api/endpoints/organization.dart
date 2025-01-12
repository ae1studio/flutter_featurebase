part of featurebase;

class _OrganizationEnd extends _EndpointBase {
  @override
  String get _path => '/organization';

  _OrganizationEnd(super.api);

  /// Get the organization details
  Future<fb.Organization> get() async {
    final Map<String, Object?> map = (await dio.get(_path)).data;
    return fb.Organization.fromJson(map);
  }
}
