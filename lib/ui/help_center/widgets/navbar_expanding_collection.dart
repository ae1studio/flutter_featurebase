part of featurebase;

class _NavbarExpandingCollection extends StatefulWidget {
  final fb.Collection collection;
  final Color textColor;
  final bool hideAuthors;
  final Locale locale;
  final BuildContext helpCenterContext;
  const _NavbarExpandingCollection({
    required this.collection,
    required this.textColor,
    required this.hideAuthors,
    required this.locale,
    required this.helpCenterContext,
  });

  @override
  State<_NavbarExpandingCollection> createState() =>
      _NavbarExpandingCollectionState();
}

class _NavbarExpandingCollectionState
    extends State<_NavbarExpandingCollection> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        children: [
          // Collection Button
          InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: () {
              _callHaptic();
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.collection.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: widget.textColor.withOpacity(0.7),
                        fontFamily: 'Inter',
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                  ),
                  Icon(
                    isExpanded
                        ? Icons.keyboard_arrow_down_rounded
                        : Icons.keyboard_arrow_right_rounded,
                    color: widget.textColor.withOpacity(0.7),
                  ),
                ],
              ),
            ),
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 200),
            child: isExpanded
                ? Column(
                    children: List.generate(
                      widget.collection.structure?.length ?? 0,
                      (index) {
                        return widget.collection.structure![index].when(
                          article: (article) {
                            return InkWell(
                              borderRadius: BorderRadius.circular(8),
                              onTap: () {
                                _callHaptic();
                                Navigator.pop(context);
                                Navigator.push(
                                  widget.helpCenterContext,
                                  MaterialPageRoute(
                                    builder: (context) => _ArticleView(
                                      article: article,
                                      textColor: widget.textColor,
                                      hideAuthors: widget.hideAuthors,
                                      locale: widget.locale,
                                    ),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                child: Row(
                                  children: [
                                    if (article.icon != null)
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 7,
                                        ),
                                        child: _FBIconWidget(
                                          icon: article.icon,
                                          textColor: widget.textColor,
                                          primaryColor:
                                              widget.textColor.withOpacity(0.7),
                                          isDark: false,
                                          size: 19,
                                        ),
                                      ),
                                    Expanded(
                                      child: Text(
                                        article.title,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color:
                                              widget.textColor.withOpacity(0.7),
                                          fontFamily: 'Inter',
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: false,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          collection: (collection) {
                            return InkWell(
                              borderRadius: BorderRadius.circular(8),
                              onTap: () {
                                _callHaptic();
                                Navigator.pop(context);
                                Navigator.push(
                                  widget.helpCenterContext,
                                  MaterialPageRoute(
                                    builder: (context) => _CollectionView(
                                      collection: collection,
                                      textColor: widget.textColor,
                                      hideAuthors: widget.hideAuthors,
                                      locale: widget.locale,
                                    ),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                child: Row(
                                  children: [
                                    if (collection.icon != null)
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 7,
                                        ),
                                        child: _FBIconWidget(
                                          icon: collection.icon,
                                          textColor: widget.textColor,
                                          primaryColor:
                                              widget.textColor.withOpacity(0.7),
                                          isDark: false,
                                          size: 19,
                                        ),
                                      ),
                                    Expanded(
                                      child: Text(
                                        collection.name,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color:
                                              widget.textColor.withOpacity(0.7),
                                          fontFamily: 'Inter',
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: false,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
