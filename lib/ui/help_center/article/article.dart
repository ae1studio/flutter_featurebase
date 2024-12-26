part of featurebase;

class _ArticleView extends ConsumerStatefulWidget {
  final fb.Article article;
  final Color textColor;
  const _ArticleView({
    // ignore: unused_element
    super.key,
    required this.article,
    required this.textColor,
  });

  @override
  ConsumerState<_ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends ConsumerState<_ArticleView> {
  @override
  Widget build(BuildContext context) {
    AsyncValue<String?> articleAsync = ref.watch(
      GetHelpCenterArticleBodyProvider(
          widget.article.articleId, widget.article.body),
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
                        fontWeight: FontWeight.w600,
                        color: widget.textColor,
                        fontFamily: 'Inter',
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      widget.article.description,
                      style: TextStyle(
                        color: widget.textColor.withOpacity(0.7),
                        fontFamily: 'Inter',
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ),
            articleAsync.when(
              data: (articleBody) => SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                sliver: HtmlWidget(
                  articleBody ?? '',
                  onTapUrl: (url) async {
                    if (url.contains(_fbSerivce.api.baseApiUrl) &&
                        url.contains('/articles/')) {
                      // Extract the article ID from the URL
                      final articleId =
                          url.split('/articles/')[1].split('-')[0];

                      fb.Article temp = await ref
                          .read(GetHelpCenterArticleProvider(articleId).future);

                      if (context.mounted) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => _ArticleView(
                              article: temp,
                              textColor: widget.textColor,
                            ),
                          ),
                        );
                      }

                      return true;
                    }

                    if (await canLaunchUrlString(url)) {
                      launchUrlString(url);
                      return true;
                    }
                    return false;
                  },
                  customStylesBuilder: (element) {
                    if (element.className.contains('link')) {
                      return {
                        'color': ColorToHex(Theme.of(context).primaryColor)
                            .toString(),
                      };
                    }
                    return null;
                  },
                  textStyle: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Inter',
                    color: widget.textColor,
                  ),
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
