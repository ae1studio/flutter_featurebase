part of featurebase;

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
        FeedbackSubmissionsProvider(orderBy: orderBy, direction: direction)
            .future);
    ref.notifyListeners();
    return;
  }

  /// Load more
  Future<fb.ResultsPagination<fb.Post>> loadMore(
      String orderBy, String direction) async {
    fb.ResultsPagination<fb.Post> temp = state;

    fb.ResultsPagination<fb.Post> tempMore =
        await ref.read(FeedbackSubmissionsProvider(
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
        FeedbackSubmissionsProvider(orderBy: orderBy, direction: direction)
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
