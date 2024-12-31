part of featurebase;

class ChangelogView extends ConsumerStatefulWidget {
  /// Logo centered in the Appbar
  final Widget logo;

  /// Featurebase Feedback Url (example: https://feedback.featurebase.app)
  final String url;

  /// App Name
  final String appName;

  /// Primary color used
  final Color primaryColor;

  /// Text Color
  final Color textColor;

  /// Background color
  final Color? backgroundColor;

  /// Default Locale (default: en)
  final Locale defaultLocale;

  const ChangelogView({
    super.key,
    required this.logo,
    required this.url,
    required this.primaryColor,
    required this.appName,
    this.textColor = Colors.black,
    this.backgroundColor,
    this.defaultLocale = const Locale('en'),
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
    _fbSerivce.setup(widget.url);
  }

  @override
  Widget build(BuildContext context) {
    fb.ResultsPagination<fb.Changelog> changelogs = ref.watch(
      ChangelogsListProvider(_getLocale(currentLocale)),
    );

    return Theme(
      data: Theme.of(context).copyWith(
        scaffoldBackgroundColor: widget.backgroundColor,
        primaryColor: widget.primaryColor,
        inputDecorationTheme: InputDecorationTheme(
          fillColor: widget.textColor.withOpacity(0.1),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
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
        body: Scrollbar(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.only(left: 12, right: 12, top: 20),
                  child: Column(
                    children: [
                      Text(
                        'Changelog',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: widget.textColor,
                          fontFamily: 'Inter',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'New updates and improvements to ${widget.appName}.',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: widget.textColor.withOpacity(0.7),
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
                            size: 55,
                          ),
                          const SizedBox(height: 15),
                          Center(
                            child: Text(
                              'No changelogs found',
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
                              color: widget.textColor.withOpacity(0.7),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'No more changelogs',
                            style: TextStyle(
                              color: widget.textColor.withOpacity(0.7),
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
                              ChangelogsListProvider(_getLocale(currentLocale))
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
