part of featurebase;

/// This was done due to riverpod 3.0.0 update
///
/// For some reason it has broken spit files and only works with one main file (not other part of files).

/// Organization

@riverpod
Future<fb.Organization> getOrganization(Ref ref) async {
  return _fbService.api.organization.get();
}

@riverpod
Future<List<fb.UserActivity>> getUserActivities(Ref ref, String id) async {
  return _fbService.api.organization.userActivities(id);
}

/// Help Center

@riverpod
Future<fb.HelpCenter> helpCenterInfo(Ref ref, String locale) async {
  return _fbService.api.helpCenter.get(locale: locale);
}

@riverpod
Future<fb.Article> getHelpCenterArticle(
    Ref ref, String articleId, String locale) async {
  return _fbService.api.helpCenter.getArticle(
    articleId,
    locale: locale,
  );
}

@riverpod
Future<String?> getHelpCenterArticleBody(
    Ref ref, String articleId, String? preLoadedBody, String locale) async {
  if (preLoadedBody != null) {
    return preLoadedBody;
  }

  fb.Article article = await _fbService.api.helpCenter.getArticle(
    articleId,
    locale: locale,
  );
  return article.body;
}

/// Feedback

@riverpod
Future<fb.ResultsPagination<fb.Post>> feedbackSubmissions(
  Ref ref, {
  int page = 1,
  String orderBy = 'date',
  String direction = 'desc',
}) async {
  return _fbService.api.feedback.get(
    page: page,
    orderBy: orderBy,
    direction: direction,
  );
}

@riverpod
class FeedbackSubmissionsList extends _$FeedbackSubmissionsList {
  @override
  fb.ResultsPagination<fb.Post> build() {
    return fb.ResultsPagination<fb.Post>(
      [],
      0,
      10,
      1,
      0,
    );
  }

  /// Refresh the list
  Future<void> refresh(String orderBy, String direction) async {
    state = await ref.read(
        feedbackSubmissionsProvider(orderBy: orderBy, direction: direction)
            .future);
    ref.notifyListeners();
    return;
  }

  /// Load more
  Future<fb.ResultsPagination<fb.Post>> loadMore(
      String orderBy, String direction) async {
    fb.ResultsPagination<fb.Post> temp = state;

    fb.ResultsPagination<fb.Post> tempMore =
        await ref.read(feedbackSubmissionsProvider(
      orderBy: orderBy,
      direction: direction,
      page: temp.page + 1,
    ).future);

    temp.results.addAll(tempMore.results);
    temp.page = tempMore.page;
    temp.totalPages = tempMore.totalPages;
    temp.totalResults = tempMore.totalResults;

    //Add to list
    state = temp;
    ref.notifyListeners();
    return temp;
  }

  /// Change the order by
  Future<void> changeOrder(String orderBy, String direction) async {
    state = await ref.read(
        feedbackSubmissionsProvider(orderBy: orderBy, direction: direction)
            .future);
    ref.notifyListeners();
    return;
  }

  /// Update a post
  void updatePost(fb.Post post) {
    int temp = state.results.indexWhere((element) => element.id == post.id);
    if (temp != -1) {
      state.results.removeAt(temp);
      state.results.insert(temp, post);
      ref.notifyListeners();
    }
  }

  /// Add a post
  void addPost(fb.Post post) {
    state.results.insert(0, post);
    ref.notifyListeners();
  }

  /// Delete a post
  void deletePost(String postId) {
    state.results.removeWhere((element) => element.id == postId);
    ref.notifyListeners();
  }
}

/// Upvote a post
Future<fb.Post?> upvotePost({
  required fb.Post post,
  required Function(fb.Post) updatePost,
}) async {
  fb.Post updatedPost;

  // Optimistic UI update
  if (post.upvoted) {
    updatedPost = post.copyWith(upvoted: false, upvotes: post.upvotes - 1);
  } else {
    updatedPost = post.copyWith(upvoted: true, upvotes: post.upvotes + 1);
  }

  // Update state
  updatePost(updatedPost);

  try {
    // Call API
    await _fbService.api.feedback.upvotePost(postId: post.id);
    return updatedPost;
  } catch (e) {
    // Revert on error
    if (post.upvoted) {
      updatedPost = post.copyWith(upvoted: false, upvotes: post.upvotes + 1);
    } else {
      updatedPost = post.copyWith(upvoted: true, upvotes: post.upvotes - 1);
    }

    updatePost(updatedPost);
    // TODO: Add error handling
    return updatedPost;
  }
}

/// Downvote a post
Future<fb.Post?> downvotePost({
  required fb.Post post,
  required Function(fb.Post) updatePost,
}) async {
  fb.Post updatedPost;

  // Optimistic UI update
  if (post.downvoted) {
    updatedPost = post.copyWith(downvoted: false, upvotes: post.upvotes + 1);
  } else {
    updatedPost = post.copyWith(downvoted: true, upvotes: post.upvotes - 1);
  }

  // Update state
  updatePost(updatedPost);

  try {
    // Call API
    await _fbService.api.feedback.downvotePost(postId: post.id);
    return updatedPost;
  } catch (e) {
    // Revert on error
    if (post.downvoted) {
      updatedPost = post.copyWith(downvoted: false, upvotes: post.upvotes + 1);
    } else {
      updatedPost = post.copyWith(downvoted: true, upvotes: post.upvotes - 1);
    }

    updatePost(updatedPost);
    // TODO: Add error handling
    return updatedPost;
  }
}

/// Comments

@riverpod
Future<fb.ResultsPagination<fb.Comment>> comments(
  Ref ref, {
  int page = 1,
  String sortBy = 'new',
  String? submissionId,
  String? changelogId,
  String? commentThreadId,
}) async {
  return _fbService.api.comment.get(
    page: page,
    sortBy: sortBy,
    submissionId: submissionId,
    changelogId: changelogId,
    commentThreadId: commentThreadId,
  );
}

@riverpod
class CommentsList extends _$CommentsList {
  String? _submissionId;
  String? _changelogId;
  String? _commentThreadId;

  @override
  fb.ResultsPagination<fb.Comment> build({
    String? submissionId,
    String? changelogId,
    String? commentThreadId,
  }) {
    _submissionId = submissionId;
    _changelogId = changelogId;
    _commentThreadId = commentThreadId;
    return fb.ResultsPagination<fb.Comment>(
      [],
      0,
      10,
      1,
      0,
    );
  }

  /// Refresh the list
  Future<void> refresh(String sortBy) async {
    state = await ref.read(commentsProvider(
      sortBy: sortBy,
      submissionId: _submissionId,
      changelogId: _changelogId,
      commentThreadId: _commentThreadId,
    ).future);
    ref.notifyListeners();
    return;
  }

  /// Load more
  Future<fb.ResultsPagination<fb.Comment>> loadMore(String sortBy) async {
    fb.ResultsPagination<fb.Comment> temp = state;

    fb.ResultsPagination<fb.Comment> tempMore = await ref.read(commentsProvider(
      sortBy: sortBy,
      submissionId: _submissionId,
      changelogId: _changelogId,
      commentThreadId: _commentThreadId,
      page: temp.page + 1,
    ).future);

    temp.results.addAll(tempMore.results);
    temp.page = tempMore.page;
    temp.totalPages = tempMore.totalPages;
    temp.totalResults = tempMore.totalResults;

    //Add to list
    state = temp;
    ref.notifyListeners();
    return temp;
  }

  /// Change the order by
  Future<void> changeOrder(String sortBy) async {
    state = await ref.read(commentsProvider(
      sortBy: sortBy,
      submissionId: _submissionId,
      changelogId: _changelogId,
      commentThreadId: _commentThreadId,
    ).future);
    ref.notifyListeners();
    return;
  }

  /// Update a comment
  void updateComment(fb.Comment comment) {
    int temp = state.results.indexWhere((element) => element.id == comment.id);
    if (temp != -1) {
      _processCommentInList(state.results, comment.id, updatedComment: comment);
      ref.notifyListeners();
    }
  }

  /// Add a comment
  void addComment(fb.Comment comment) {
    state.results.insert(0, comment);
    ref.notifyListeners();
  }

  /// Delete a comment
  void deleteComment(String commentId) {
    _processCommentInList(state.results, commentId, updatedComment: null);
    ref.notifyListeners();
  }

  /// Helper method to recursively find and update/delete a comment
  bool _processCommentInList(List<fb.Comment> comments, String commentId,
      {fb.Comment? updatedComment}) {
    for (int i = 0; i < comments.length; i++) {
      if (comments[i].id == commentId) {
        if (updatedComment != null) {
          comments[i] = updatedComment;
        } else {
          comments.removeAt(i);
        }
        return true;
      }

      // Recursively search through replies
      if (comments[i].replies.isNotEmpty) {
        bool found = _processCommentInList(comments[i].replies, commentId,
            updatedComment: updatedComment);
        if (found) return true;
      }
    }
    return false;
  }
}

/// Changelog

@riverpod
Future<fb.ResultsPagination<fb.Changelog>> changelogInfo(Ref ref, String locale,
    {int page = 1}) async {
  return _fbService.api.changelog.get(
    locale: locale,
    page: page,
  );
}

@riverpod
class ChangelogsList extends _$ChangelogsList {
  @override
  fb.ResultsPagination<fb.Changelog> build(String locale) {
    return fb.ResultsPagination<fb.Changelog>(
      [],
      0,
      10,
      1,
      0,
    );
  }

  /// Refresh the list
  Future<void> refresh(String locale) async {
    state = await ref.read(changelogInfoProvider(locale).future);
    ref.notifyListeners();
    return;
  }

  /// Load more changelogs
  Future<fb.ResultsPagination<fb.Changelog>> loadMore(String locale) async {
    fb.ResultsPagination<fb.Changelog> temp = state;

    fb.ResultsPagination<fb.Changelog> tempMore = await ref
        .read(changelogInfoProvider(locale, page: temp.page + 1).future);

    temp.results.addAll(tempMore.results);
    temp.page = tempMore.page;
    temp.totalPages = tempMore.totalPages;
    temp.totalResults = tempMore.totalResults;

    //Add to list
    state = temp;
    ref.notifyListeners();
    return temp;
  }
}

/// User

@riverpod
Future<fb.User> getCurrentUser(Ref ref) async {
  //If not authenticated, authenticate
  if (!_fbService.api.isTokenSet()) {
    await _fbService.setupAuth();
  }

  _fbService.user = await _fbService.api.user.get();

  return _fbService.user!;
}
