part of featurebase;

class _ArticleView extends ConsumerStatefulWidget {
  final fb.Article article;
  final Color textColor;
  final Locale locale;
  const _ArticleView({
    // ignore: unused_element, unused_element_parameter
    super.key,
    required this.article,
    required this.textColor,
    required this.locale,
  });

  @override
  ConsumerState<_ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends ConsumerState<_ArticleView> {
  @override
  Widget build(BuildContext context) {
    AsyncValue<String?> articleAsync = ref.watch(
      getHelpCenterArticleBodyProvider(widget.article.articleId,
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
                          color: _mutedColor(context),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                        ),
                        textAlign: TextAlign.start,
                      ),
                    if (widget.article.author != null &&
                        widget.article.createdAt != null)
                      const SizedBox(height: 15),
                    if (widget.article.author != null &&
                        widget.article.createdAt != null)
                      Row(
                        children: [
                          if (widget.article.author != null)
                            ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: _SafeCachedNetworkImage(
                                imageUrl: widget.article.author!.avatarUrl,
                                height: 40,
                                width: 40,
                              ),
                            ),
                          if (widget.article.author != null)
                            const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (widget.article.author != null)
                                  Text(
                                    FeaturebaseLocalizations.of(context)
                                        .writtenBy(widget.article.author!.name),
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      color: _mutedColor(context),
                                    ),
                                  ),
                                if (widget.article.updatedAt != null)
                                  Text(
                                    FeaturebaseLocalizations.of(context)
                                        .lastUpdated(timeago.format(
                                      widget.article.updatedAt!,
                                      locale:
                                          FeaturebaseLocalizations.of(context)
                                              .localeName,
                                    )),
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      color: _mutedColor(context),
                                    ),
                                  ),
                              ],
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
