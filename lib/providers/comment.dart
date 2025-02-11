part of featurebase;

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
    state = await ref.read(CommentsProvider(
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

    fb.ResultsPagination<fb.Comment> tempMore = await ref.read(CommentsProvider(
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
    state = await ref.read(CommentsProvider(
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
      state.results.removeAt(temp);
      state.results.insert(temp, comment);
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
    state.results.removeWhere((element) => element.id == commentId);
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
