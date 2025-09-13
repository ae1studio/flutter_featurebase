part of featurebase;

class ChangelogView extends ConsumerStatefulWidget {
  /// Logo centered in the Appbar
  final Widget logo;

  /// Featurebase organization name (example: featurebase)
  final String organizationName;

  /// App Name
  final String appName;

  /// Primary color used
  final Color primaryColor;

  /// Text Color
  final Color textColor;

  /// Background color
  final Color? backgroundColor;

  /// Enable Haptic Feedback
  final bool enableHapticFeedback;

  /// Default Locale (default: en)
  final Locale defaultLocale;

  const ChangelogView({
    super.key,
    required this.logo,
    required this.organizationName,
    required this.primaryColor,
    required this.appName,
    this.textColor = Colors.black,
    this.backgroundColor,
    this.defaultLocale = const Locale('en'),
    this.enableHapticFeedback = true,
  });

  @override
  ConsumerState<ChangelogView> createState() => _ChangelogViewState();
}

class _ChangelogViewState extends ConsumerState<ChangelogView> {
  Locale currentLocale = Locale('en');

  bool loading = true;
  dynamic error;
  bool noMoreItems = false;

  @override
  void initState() {
    super.initState();
    currentLocale = widget.defaultLocale;
    initializeDateFormatting(currentLocale.languageCode);
    _fbService.setup(widget.organizationName, widget.enableHapticFeedback);
    _setupTimeAgo();
  }

  @override
  Widget build(BuildContext context) {
    fb.ResultsPagination<fb.Changelog> changelogs = ref.watch(
      changelogsListProvider(_getLocale(currentLocale)),
    );

    return Theme(
      data: Theme.of(context).copyWith(
        scaffoldBackgroundColor: widget.backgroundColor,
        primaryColor: widget.primaryColor,
        inputDecorationTheme: InputDecorationTheme(
          fillColor: widget.textColor.withValues(alpha: 0.1),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              _callHaptic();
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: _calculateTextColor(widget.primaryColor),
            ),
          ),
          title: widget.logo,
          actions: [],
          centerTitle: true,
          backgroundColor: widget.primaryColor,
          surfaceTintColor: widget.primaryColor,
          elevation: 0,
        ),
        backgroundColor: widget.backgroundColor,
        resizeToAvoidBottomInset: false,
        body: Scrollbar(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.only(left: 12, right: 12, top: 20),
                  child: Column(
                    children: [
                      Text(
                        FeaturebaseLocalizations.of(context).changelog,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: widget.textColor,
                          fontFamily: 'Inter',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        FeaturebaseLocalizations.of(context)
                            .changelogDescription(widget.appName),
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: _mutedColor(context),
                          fontFamily: 'Inter',
                        ),
                        textAlign: TextAlign.center,
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
                              FeaturebaseLocalizations.of(context)
                                  .noChangelogsFound,
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
                              color: _mutedColor(context),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            FeaturebaseLocalizations.of(context)
                                .noMoreChangelogs,
                            style: TextStyle(
                              color: _mutedColor(context),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: changelogs.results.length,
                  itemBuilder: (context, index) {
                    return _ChangelogCard(
                      changelog: changelogs.results[index],
                      textColor: widget.textColor,
                      locale: currentLocale,
                    );
                  },
                  onFetchData: () async {
                    try {
                      fb.ResultsPagination<fb.Changelog> added = await ref
                          .read(
                              changelogsListProvider(_getLocale(currentLocale))
                                  .notifier)
                          .loadMore(_getLocale(currentLocale));
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
        ),
      ),
    );
  }
}
