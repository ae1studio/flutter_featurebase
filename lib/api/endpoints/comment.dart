part of featurebase;

class _CommentEnd extends _EndpointBase {
  @override
  String get _path => '/comment';

  _CommentEnd(super.api);

  /// Get a list of comments
  Future<fb.ResultsPagination<fb.Comment>> get({
    /// Sort by
    ///
    /// Can be new, best, old
    String sortBy = 'new',

    /// Submission ID
    String? submissionId,

    /// Changelog ID
    String? changelogId,

    /// Comment Thread ID
    String? commentThreadId,

    /// Page number
    int page = 1,
  }) async {
    Map<String, dynamic>? queryParameter = {};

    /// Submission ID
    if (submissionId != null) {
      queryParameter["submissionId"] = submissionId;
    }

    /// Changelog ID
    if (changelogId != null) {
      queryParameter["changelogId"] = changelogId;
    }

    /// Comment Thread ID
    if (commentThreadId != null) {
      queryParameter["commentThreadId"] = commentThreadId;
    }

    /// Throw an error if no submissionId, changelogId, or commentThreadId is provided
    if (submissionId == null &&
        changelogId == null &&
        commentThreadId == null) {
      throw Exception(
        "At least one of submissionId, changelogId, or commentThreadId must be provided",
      );
    }

    queryParameter["sortBy"] = sortBy;
    queryParameter["page"] = page;

    final Map<String, Object?> map =
        (await dio.get(_path, queryParameters: queryParameter)).data;
    return fb.ResultsPagination<fb.Comment>.fromJson(
      map,
      (json) => fb.Comment.fromJson(json as Map<String, dynamic>),
    );
  }
}
