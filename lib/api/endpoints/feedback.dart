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

  /// Submit a post
  Future<fb.Post> submit({
    required String title,
    required String content,
    required String categoryId,
    required String authorId,
  }) async {
    final Map<String, Object?> map = (await dio.post(_path, data: {
      "title": title,
      "content": content,
      "categoryId": categoryId,
      "authorId": authorId,
    }))
        .data;
    return fb.Post.fromJson(map['submission'] as Map<String, Object?>);
  }

  /// Update a post
  Future<fb.Post> updatePost({
    required String title,
    required String content,
    required String categoryId,
    required String postId,
  }) async {
    final Map<String, Object?> map = (await dio.post(_path, data: {
      "title": title,
      "content": content,
      "categoryId": categoryId,
      "submissionId": postId,
    }))
        .data;
    return fb.Post.fromJson(map);
  }

  /// Delete a post
  Future<void> deletePost({
    required String postId,
  }) async {
    await dio.delete(_path, data: {
      "submissionId": postId,
    });
  }

  /// Upvote a post
  Future<void> upvotePost({
    required String postId,
  }) async {
    await dio.post('$_path/upvote', data: {
      "submissionId": postId,
    });
  }

  /// Downvote a post
  Future<void> downvotePost({
    required String postId,
  }) async {
    await dio.post('$_path/downvote', data: {
      "submissionId": postId,
    });
  }

  /// Subscribe to a post by email
  Future<void> subscribeToPost({
    required String postId,
    required String email,
  }) async {
    await dio.post('$_path/subscribeWithEmail', data: {
      "submissionId": postId,
      "email": email,
    });
  }
}
