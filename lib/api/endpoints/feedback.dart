part of featurebase;

class _FeedbackEnd extends _EndpointBase {
  @override
  String get _path => '/submission';

  _FeedbackEnd(super.api);

  /// Get a list of posts
  Future<fb.ResultsPagination<fb.Post>> get({
    /// Order by
    String orderBy = 'date',

    /// Direction
    String direction = 'desc',

    /// Include pinned posts
    bool includePinned = true,

    /// Page number
    int page = 1,
  }) async {
    final Map<String, Object?> map = (await dio.get(_path, queryParameters: {
      "page": page,
      "includePinned": includePinned,
      "sortBy": '$orderBy:$direction',
    }))
        .data;
    return fb.ResultsPagination<fb.Post>.fromJson(
      map,
      (json) => fb.Post.fromJson(json as Map<String, dynamic>),
    );
  }
}
