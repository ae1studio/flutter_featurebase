part of featurebase;

class _ArticleView extends StatefulWidget {
  final fb.Article article;
  final Color textColor;
  const _ArticleView({
    // ignore: unused_element
    super.key,
    required this.article,
    required this.textColor,
  });

  @override
  State<_ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<_ArticleView> {
  @override
  Widget build(BuildContext context) {
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
                    if (widget.article.icon != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: _FBIconWidget(
                          icon: widget.article.icon,
                          primaryColor: Theme.of(context).primaryColor,
                          size: 36,
                        ),
                      ),
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
            SliverToBoxAdapter(
              child: SizedBox(height: 80),
            ),
          ],
        ),
      ),
    );
  }
}
