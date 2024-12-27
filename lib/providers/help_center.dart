part of featurebase;

@riverpod
Future<fb.HelpCenter> helpCenterInfo(Ref ref, String locale) async {
  return _fbSerivce.api.helpCenter.get(locale: locale);
}

@riverpod
Future<fb.Article> getHelpCenterArticle(
    Ref ref, String articleId, String locale) async {
  return _fbSerivce.api.helpCenter.getArticle(
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

  fb.Article article = await _fbSerivce.api.helpCenter.getArticle(
    articleId,
    locale: locale,
  );
  return article.body;
}
