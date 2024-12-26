part of featurebase;

@riverpod
Future<fb.HelpCenter> helpCenterInfo(Ref ref) async {
  return _fbSerivce.api.helpCenter.get();
}

@riverpod
Future<fb.Article> getHelpCenterArticle(Ref ref, String articleId) async {
  return _fbSerivce.api.helpCenter.getArticle(articleId);
}
