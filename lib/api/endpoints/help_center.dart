part of featurebase;

class _HelpCenterEnd extends _EndpointBase {
  @override
  String get _path => '/helpcenter';

  _HelpCenterEnd(super.api);

  /// Get the help center
  Future<fb.HelpCenter> get(
      {bool withStructure = true, String locale = 'en'}) async {
    final Map<String, Object?> map = (await dio.get(_path, queryParameters: {
      "withStructure": withStructure,
      "locale": locale,
    }))
        .data;

    return fb.HelpCenter.fromJson(map);
  }

  /// Get an article by its id
  Future<fb.Article> getArticle(String id, {String locale = 'en'}) async {
    final Map<String, Object?> map =
        (await dio.get('$_path/articles', queryParameters: {
      "articleId": id,
      "locale": locale,
    }))
            .data;
    var articles = map['results'] as Iterable<dynamic>;
    return (articles.map((m) => fb.Article.fromJson(m)).toList()).first;
  }
}
