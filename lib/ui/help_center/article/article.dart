part of featurebase;

class _ArticleView extends ConsumerStatefulWidget {
  final fb.Article article;
  final Color textColor;
  final bool hideAuthors;
  final Locale locale;
  const _ArticleView({
    // ignore: unused_element
    super.key,
    required this.article,
    required this.textColor,
    required this.hideAuthors,
    required this.locale,
  });

  @override
  ConsumerState<_ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends ConsumerState<_ArticleView> {
  @override
  Widget build(BuildContext context) {
    AsyncValue<String?> articleAsync = ref.watch(
      GetHelpCenterArticleBodyProvider(widget.article.articleId,
          widget.article.body, _getLocale(widget.locale)),
    );

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Scrollbar(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.article.title,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: widget.textColor,
                        fontFamily: 'Inter',
                      ),
                      textAlign: TextAlign.start,
                    ),
                    if (widget.article.description.trim().isNotEmpty)
                      Text(
                        widget.article.description,
                        style: TextStyle(
                          color: widget.textColor.withOpacity(0.7),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                        ),
                        textAlign: TextAlign.start,
                      ),
                    if (!widget.hideAuthors) const SizedBox(height: 15),
                    if (!widget.hideAuthors)
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: _SafeCachedNetworkImage(
                              imageUrl: widget.article.author.avatarUrl,
                              height: 40,
                              width: 40,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              FeaturebaseLocalizations.of(context)
                                  .writtenBy(widget.article.author.name),
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                color: widget.textColor.withOpacity(0.7),
                              ),
                            ),
                          ),
                        ],
                      ),
                    const SizedBox(height: 5),
                  ],
                ),
              ),
            ),
            articleAsync.when(
              data: (articleBody) => SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                sliver: _RenderHtmlWidget(
                  html: articleBody ?? '',
                  locale: widget.locale,
                  textColor: widget.textColor,
                  renderMode: RenderMode.sliverList,
                  hideAuthors: widget.hideAuthors,
                ),
              ),
              error: (error, stackTrace) => SliverToBoxAdapter(
                child: SizedBox(height: 0),
              ),
              loading: () => SliverToBoxAdapter(
                child: Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 80),
            ),
          ],
        ),
      ),
    );
  }
}
