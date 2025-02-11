part of featurebase;

class _UserEnd extends _EndpointBase {
  @override
  String get _path => '/user';

  _UserEnd(super.api);

  /// Get the user details
  Future<fb.User> get() async {
    final Map<String, Object?> map = (await dio.get(_path)).data;
    return fb.User.fromJson(map);
  }
}
