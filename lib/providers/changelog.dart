part of featurebase;

@riverpod
Future<fb.ResultsPagination<fb.Changelog>> changelogInfo(Ref ref, String locale,
    {int page = 1}) async {
  return _fbSerivce.api.changelog.get(
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
    state = await ref.read(ChangelogInfoProvider(locale).future);
    ref.notifyListeners();
    return;
  }

  /// Load more changelogs
  Future<fb.ResultsPagination<fb.Changelog>> loadMore(String locale) async {
    fb.ResultsPagination<fb.Changelog> temp = state;

    fb.ResultsPagination<fb.Changelog> tempMore = await ref
        .read(ChangelogInfoProvider(locale, page: temp.page + 1).future);

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
