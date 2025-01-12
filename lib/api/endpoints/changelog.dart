part of featurebase;

class _ChangelogEnd extends _EndpointBase {
  @override
  String get _path => '/changelog';

  _ChangelogEnd(super.api);

  /// Get a list of changelogs
  Future<fb.ResultsPagination<fb.Changelog>> get({
    String locale = 'en',
    int page = 1,
  }) async {
    final Map<String, Object?> map = (await dio.get(_path, queryParameters: {
      "locale": locale,
      "page": page,
    }))
        .data;
    return fb.ResultsPagination<fb.Changelog>.fromJson(
      map,
      (json) => fb.Changelog.fromJson(json as Map<String, dynamic>),
    );
  }
}
