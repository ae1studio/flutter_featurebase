part of featurebase;

class FeedbackView extends ConsumerStatefulWidget {
  /// Logo centered in the Appbar
  final Widget logo;

  /// Featurebase organization name (example: featurebase)
  final String organizationName;

  /// SSO Token URL (See README.md for more information)
  final String ssoTokenUrl;

  /// SSO Auth Token (See README.md for more information)
  final String ssoAuthToken;

  /// App name (example: Featurebase)
  final String appName;

  /// Primary color used
  final Color primaryColor;

  /// Text Color
  final Color textColor;

  /// Background color
  final Color? backgroundColor;

  /// Search fill color
  final Color? searchFillColor;

  /// Enable Haptic Feedback
  final bool enableHapticFeedback;

  /// Default Locale (default: en)
  final Locale defaultLocale;

  const FeedbackView({
    super.key,
    required this.logo,
    required this.organizationName,
    required this.ssoTokenUrl,
    required this.ssoAuthToken,
    required this.appName,
    required this.primaryColor,
    this.textColor = Colors.black,
    this.backgroundColor,
    this.defaultLocale = const Locale('en'),
    this.searchFillColor,
    this.enableHapticFeedback = true,
  });

  @override
  ConsumerState<FeedbackView> createState() => _FeedbackViewState();
}

GlobalKey<NavigatorState> _feedbackNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: '_FeedbackNavigatorKey');

class _FeedbackViewState extends ConsumerState<FeedbackView> {
  bool isFeedbackHome = true;
  bool navBarOpen = false;

  bool failedAuth = false;
  bool hasAuth = false;

  bool loading = true;
  dynamic error;
  bool noMoreItems = false;

  String orderBy = 'date';
  String direction = 'desc';

  Locale currentLocale = Locale('en');

  final TextEditingController _searchController = TextEditingController();

  late final _navigatorObserver = NavigationStateObserver(
      navigatorKey: _feedbackNavigatorKey,
      onStackStateChanged: _handleStackStateChange);

  @override
  void initState() {
    currentLocale = widget.defaultLocale;
    _fbService.setup(widget.organizationName, widget.enableHapticFeedback);
    init();
    super.initState();
  }

  init() async {
    try {
      await _fbService.setupAuth(widget.ssoTokenUrl, widget.ssoAuthToken);
      hasAuth = _fbService.hasAuth;
    } catch (e) {
      failedAuth = true;
    }
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _handleStackStateChange(bool isHome) {
    if (mounted) {
      setState(() => isFeedbackHome = isHome);
    }
  }

  void _handleBackPress() {
    _callHaptic();
    if (_feedbackNavigatorKey.currentState?.canPop() == true) {
      _feedbackNavigatorKey.currentState?.pop();
      return;
    }
    Navigator.pop(context);
  }

  void _navigateToHome() {
    _callHaptic();
    _feedbackNavigatorKey.currentState?.popUntil((route) => route.isFirst);
  }

  @override
  Widget build(BuildContext context) {
    // AsyncValue<fb.Organization> organizationAsync = ref.watch(
    //   getOrganizationProvider,
    // );

    fb.ResultsPagination<fb.Post> posts = ref.watch(
      feedbackSubmissionsListProvider,
    );

    return Theme(
      data: Theme.of(context).copyWith(
        scaffoldBackgroundColor: widget.backgroundColor,
        primaryColor: widget.primaryColor,
        inputDecorationTheme: InputDecorationTheme(
          fillColor:
              widget.searchFillColor ?? widget.textColor.withOpacity(0.5),
          filled: true,
        ),
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
          actions: [],
          centerTitle: true,
          backgroundColor: widget.primaryColor,
          surfaceTintColor: widget.primaryColor,
          elevation: 0,
        ),
        backgroundColor: widget.backgroundColor,
        resizeToAvoidBottomInset: false,
        body: PopScope(
          canPop: isFeedbackHome,
          onPopInvokedWithResult: (bool didPop, dynamic result) {
            if (!didPop) {
              _handleBackPress();
            }
          },
          child: CustomTopNavigator(
            navigatorKey: _feedbackNavigatorKey,
            home: hasAuth
                ? Scrollbar(
                    child: CustomScrollView(
                      slivers: [
                        //Header
                        SliverToBoxAdapter(
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 14,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Feedback',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24,
                                      ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Let us know how we can improve ${widget.appName} and upvote existing ideas.',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color:
                                            widget.textColor.withOpacity(0.7),
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 10,
                            ),
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Latest posts',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                        ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 6,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).cardColor,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: widget.textColor.withOpacity(0.1),
                                      width: 1,
                                    ),
                                  ),
                                  child: DropdownButton<String>(
                                    value: orderBy,
                                    items: ['date', 'upvotes', 'trending']
                                        .map(
                                          (e) => DropdownMenuItem<String>(
                                            value: e,
                                            child: Row(
                                              children: [
                                                const SizedBox(width: 2),
                                                _FBIconWidget(
                                                  icon: fb.FBIcon(
                                                    type: 'predefined',
                                                    value: _orderByIcon(e),
                                                  ),
                                                  isDark: false,
                                                  textColor: widget.textColor,
                                                  size: 18,
                                                  primaryColor: widget.textColor
                                                      .withOpacity(0.7),
                                                ),
                                                const SizedBox(width: 3),
                                                Text(
                                                  _orderByLabel(e),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleLarge!
                                                      .copyWith(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16,
                                                        color: widget.textColor
                                                            .withOpacity(0.7),
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                        .toList(),
                                    onChanged: (value) async {
                                      loading = true;
                                      noMoreItems = false;
                                      error = null;
                                      setState(() {});
                                      await ref
                                          .read(feedbackSubmissionsListProvider
                                              .notifier)
                                          .changeOrder(value!, direction);
                                      setState(() {
                                        orderBy = value;
                                        loading = false;
                                      });
                                    },
                                    isDense: true,
                                    padding: EdgeInsets.zero,
                                    underline: const SizedBox(),
                                    dropdownColor: Theme.of(context).cardColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SliverInfiniteListView(
                          delegate: PaginationDelegate(
                            isLoading: loading,
                            hasError: error != null,
                            hasReachedMax: noMoreItems,
                            invisibleItemsThreshold: 5,
                            firstPageErrorBuilder: (context, onRetry) {
                              return _ErrorLoadingWidget(
                                textColor: widget.textColor,
                              );
                            },
                            loadMoreErrorBuilder: (context, onRetry) {
                              return _ErrorLoadingWidget(
                                textColor: widget.textColor,
                              );
                            },
                            firstPageLoadingBuilder: (context) {
                              return Center(
                                child: CircularProgressIndicator(
                                  color: Theme.of(context).primaryColor,
                                ),
                              );
                            },
                            firstPageNoItemsBuilder: (context) {
                              return Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.info_rounded,
                                      color: widget.textColor,
                                      size: 45,
                                    ),
                                    const SizedBox(height: 15),
                                    Center(
                                      child: Text(
                                        'No posts found',
                                        style: TextStyle(
                                          color: widget.textColor,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            loadMoreNoMoreItemsBuilder: (context) {
                              return Column(
                                children: [
                                  const SizedBox(height: 20),
                                  Center(
                                    child: Text(
                                      '-',
                                      style: TextStyle(
                                        color:
                                            widget.textColor.withOpacity(0.7),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      'No more posts',
                                      style: TextStyle(
                                        color:
                                            widget.textColor.withOpacity(0.7),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                            itemCount: posts.results.length,
                            itemBuilder: (context, index) {
                              return _PostCard(
                                post: posts.results[index],
                                textColor: widget.textColor,
                                locale: currentLocale,
                              );
                            },
                            onFetchData: () async {
                              try {
                                fb.ResultsPagination<fb.Post> added = await ref
                                    .read(feedbackSubmissionsListProvider
                                        .notifier)
                                    .loadMore(orderBy, direction);
                                // If 10 new items are not added there is no more
                                if (added.page == added.totalPages) {
                                  noMoreItems = true;
                                  if (!loading) {
                                    if (mounted) setState(() {});
                                  }
                                }
                                //Done with first load
                                if (loading || added.page != added.totalPages) {
                                  loading = false;
                                  if (mounted) setState(() {});
                                }
                              } catch (e) {
                                error = e;
                                if (mounted) {
                                  setState(() {});
                                }
                              }
                            },
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: const SizedBox(
                            height: 80,
                          ),
                        ),
                      ],
                    ),
                  )
                : Center(
                    child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
            pageRoute: PageRoutes.materialPageRoute,
            routes: const {},
            navigatorObservers: [
              HeroController(),
              _navigatorObserver,
            ],
          ),
        ),
      ),
    );
  }
}
