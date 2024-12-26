part of featurebase;

@riverpod
Future<fb.HelpCenter> helpCenterInfo(Ref ref) async {
  return _fbSerivce.api.helpCenter.get();
}

@riverpod
Future<fb.Article> getHelpCenterArticle(Ref ref, String articleId) async {
  return _fbSerivce.api.helpCenter.getArticle(articleId);
}

@riverpod
Future<String?> getHelpCenterArticleBody(
    Ref ref, String articleId, String? preLoadedBody) async {
  if (preLoadedBody != null) {
    return preLoadedBody;
  }

  fb.Article article = await _fbSerivce.api.helpCenter.getArticle(articleId);
  return article.body;
}
