part of featurebase;

class HelpCenterView extends ConsumerStatefulWidget {
  /// Logo centered in the Appbar
  final Widget logo;

  /// Featurebase url (example: https://help.featurebase.app)
  final String url;

  /// Primary color used
  final Color primaryColor;

  /// Text Color
  final Color textColor;

  /// Background color
  final Color? backgroundColor;

  /// Hide Authors
  final bool hideAuthors;

  /// Show Search Bar
  final bool showSearchBar;

  /// Default Locale (default: en)
  final Locale defaultLocale;

  const HelpCenterView({
    super.key,
    required this.logo,
    required this.url,
    required this.primaryColor,
    this.textColor = Colors.black,
    this.backgroundColor,
    this.hideAuthors = false,
    this.defaultLocale = const Locale('en'),
    this.showSearchBar = true,
  });

  @override
  ConsumerState<HelpCenterView> createState() => _HelpCenterViewState();
}

class _HelpCenterViewState extends ConsumerState<HelpCenterView> {
  GlobalKey<NavigatorState> helpCenterNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: '_HelpCenterNavigatorKey');
  bool isHelpCenterHome = true;
  bool navBarOpen = false;

  late final _navigatorObserver = NavigationStateObserver(
      navigatorKey: helpCenterNavigatorKey,
      onStackStateChanged: _handleStackStateChange);

  @override
  void initState() {
    _fbSerivce.setup(widget.url);
    super.initState();
  }

  void _handleStackStateChange(bool isHome) {
    if (mounted) {
      setState(() => isHelpCenterHome = isHome);
    }
  }

  void _handleBackPress() {
    if (helpCenterNavigatorKey.currentState?.canPop() == true) {
      helpCenterNavigatorKey.currentState?.pop();
      return;
    }
    Navigator.pop(context);
  }

  void _navigateToHome() {
    helpCenterNavigatorKey.currentState?.popUntil((route) => route.isFirst);
  }

  List<SearchFieldListItem<fb.Article>> _getArticleSuggestions(
      fb.HelpCenter helpCenter) {
    List<SearchFieldListItem<fb.Article>> suggestions = [];

    for (fb.Collection collection in helpCenter.structure!) {
      for (fb.CollectionContent content in collection.structure!) {
        content.when(
          article: (article) {
            suggestions.add(
              SearchFieldListItem<fb.Article>(
                article.title,
                item: article,
                child: _buildArticleSuggestion(article),
              ),
            );
          },
          collection: (tempCollection) {
            for (fb.CollectionContent tempContent
                in tempCollection.structure!) {
              tempContent.when(
                article: (article) {
                  suggestions.add(
                    SearchFieldListItem<fb.Article>(
                      article.title,
                      item: article,
                      child: _buildArticleSuggestion(article),
                    ),
                  );
                },
                collection: (tempCollection) {
                  return;
                },
              );
            }
          },
        );
      }
    }

    return suggestions;
  }

  @override
  Widget build(BuildContext context) {
    AsyncValue<fb.HelpCenter> helpCenterAsync = ref.watch(
      HelpCenterInfoProvider(_getLocale(widget.defaultLocale)),
    );

    return Theme(
      data: Theme.of(context).copyWith(
        scaffoldBackgroundColor: widget.backgroundColor,
        primaryColor: widget.primaryColor,
      ),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: _handleBackPress,
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: _calculateTextColor(widget.primaryColor),
            ),
          ),
          title: GestureDetector(
            onTap: _navigateToHome,
            child: widget.logo,
          ),
          actions: [
            helpCenterAsync.when(
              data: (data) {
                return IconButton(
                  onPressed: () async {
                    setState(() {
                      navBarOpen = true;
                    });
                    await showDialog(
                      context: context,
                      useSafeArea: false,
                      builder: (context2) => BackdropFilter(
                        filter: ui.ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: _NavbarPopupWidget(
                          helpCenter: data,
                          textColor: widget.textColor,
                          primaryColor: widget.primaryColor,
                          hideAuthors: widget.hideAuthors,
                          locale: widget.defaultLocale,
                          helpCenterContext:
                              helpCenterNavigatorKey.currentContext!,
                        ),
                      ),
                    );
                    setState(() {
                      navBarOpen = false;
                    });
                  },
                  icon: Icon(
                    navBarOpen ? Icons.close_rounded : Icons.menu_rounded,
                    color: _calculateTextColor(widget.primaryColor),
                  ),
                );
              },
              error: (error, stackTrace) {
                return const SizedBox.shrink();
              },
              loading: () {
                return IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.menu_rounded,
                    color: _calculateTextColor(widget.primaryColor)
                        .withOpacity(0.4),
                  ),
                );
              },
            ),
          ],
          centerTitle: true,
          backgroundColor: widget.primaryColor,
          surfaceTintColor: widget.primaryColor,
          elevation: 0,
        ),
        backgroundColor: widget.backgroundColor,
        body: helpCenterAsync.when(
          data: (data) {
            return PopScope(
              canPop: isHelpCenterHome,
              onPopInvokedWithResult: (bool didPop, dynamic result) {
                if (!didPop) {
                  _handleBackPress();
                }
              },
              child: CustomTopNavigator(
                navigatorKey: helpCenterNavigatorKey,
                home: Scrollbar(
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 20),
                          child: Column(
                            children: [
                              Text(
                                data.title,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: widget.textColor,
                                  fontFamily: 'Inter',
                                ),
                                textAlign: TextAlign.center,
                              ),
                              if (data.description.trim().isNotEmpty)
                                Text(
                                  data.description,
                                  style: TextStyle(
                                    color: widget.textColor.withOpacity(0.7),
                                    fontFamily: 'Inter',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                            ],
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 15,
                            right: 12,
                            left: 12,
                          ),
                          child: SearchField<fb.Article>(
                            suggestions: _getArticleSuggestions(data),
                            searchInputDecoration: SearchInputDecoration(
                              cursorColor: Theme.of(context).primaryColor,
                              hintText: data.searchPlaceholder,
                              hintStyle: TextStyle(
                                color: widget.textColor.withOpacity(0.7),
                                fontFamily: 'Inter',
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              fillColor: Colors.redAccent,
                              searchStyle: TextStyle(
                                color: widget.textColor,
                                fontFamily: 'Inter',
                              ),
                            ),
                            suggestionsDecoration: SuggestionDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: widget.textColor.withOpacity(0.1),
                              ),
                            ),
                            onSuggestionTap: (p0) {
                              if (p0.item == null) return;
                              Navigator.push(
                                helpCenterNavigatorKey.currentContext!,
                                MaterialPageRoute(
                                  builder: (context) => _ArticleView(
                                    article: p0.item!,
                                    textColor: widget.textColor,
                                    hideAuthors: widget.hideAuthors,
                                    locale: widget.defaultLocale,
                                  ),
                                ),
                              );
                            },
                            dynamicHeight: true,
                            maxSuggestionBoxHeight: 250,
                            emptyWidget: Container(
                              padding: const EdgeInsets.symmetric(vertical: 35),
                              decoration: BoxDecoration(
                                color: Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: widget.textColor.withOpacity(0.1),
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.search_rounded,
                                      color: widget.textColor.withOpacity(0.7),
                                    ),
                                    Text(
                                      'No results found',
                                      style: TextStyle(
                                        color:
                                            widget.textColor.withOpacity(0.7),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Inter',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SliverList.builder(
                        itemCount: data.structure?.length ?? 0,
                        itemBuilder: (context, index) {
                          fb.Collection collection = data.structure![index];

                          return Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, right: 10, left: 10),
                            child: _CollectionCard(
                              collection: collection,
                              textColor: widget.textColor,
                              hideAuthors: widget.hideAuthors,
                              locale: widget.defaultLocale,
                            ),
                          );
                        },
                      ),
                      SliverToBoxAdapter(
                        child: const SizedBox(
                          height: 80,
                        ),
                      ),
                    ],
                  ),
                ),
                pageRoute: PageRoutes.materialPageRoute,
                routes: const {},
                navigatorObservers: [
                  HeroController(),
                  _navigatorObserver,
                ],
              ),
            );
          },
          error: (error, stackTrace) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.error_outline_rounded,
                    size: 40,
                    color: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    FeaturebaseLocalizations.of(context).failedToLoad,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: widget.textColor,
                      fontFamily: 'Inter',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    FeaturebaseLocalizations.of(context).tryAgainLater,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: widget.textColor.withOpacity(0.7),
                      fontFamily: 'Inter',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          },
          loading: () {
            return Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildArticleSuggestion(fb.Article article) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  article.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: widget.textColor,
                    fontFamily: 'Inter',
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
              ),
            ],
          ),
          if (article.description.trim().isNotEmpty)
            Text(
              article.description,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: widget.textColor.withOpacity(0.7),
                fontFamily: 'Inter',
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
            ),
        ],
      ),
    );
  }
}
