part of featurebase;

class KnowledgeBaseView extends ConsumerStatefulWidget {
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

  const KnowledgeBaseView({
    super.key,
    required this.logo,
    required this.url,
    required this.primaryColor,
    this.textColor = Colors.black,
    this.backgroundColor,
  });

  @override
  ConsumerState<KnowledgeBaseView> createState() => _HelpCenterViewState();
}

class _HelpCenterViewState extends ConsumerState<KnowledgeBaseView> {
  GlobalKey<NavigatorState> helpcCenterNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: '_HelpCenterNavigatorKey');

  @override
  void initState() {
    _fbSerivce.setup(widget.url);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AsyncValue<fb.HelpCenter> helpCenterAsync = ref.watch(
      helpCenterInfoProvider,
    );

    return Theme(
      data: Theme.of(context).copyWith(
        scaffoldBackgroundColor: widget.backgroundColor,
        primaryColor: widget.primaryColor,
      ),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              //Pop normal pages first
              if (helpcCenterNavigatorKey.currentState?.canPop() == true) {
                helpcCenterNavigatorKey.currentState?.pop();
                return;
              }

              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: _calculateTextColor(widget.primaryColor),
            ),
          ),
          title: GestureDetector(
            onTap: () {
              helpcCenterNavigatorKey.currentState
                  ?.popUntil((route) => route.isFirst);
            },
            child: widget.logo,
          ),
          centerTitle: true,
          backgroundColor: widget.primaryColor,
          surfaceTintColor: widget.primaryColor,
          elevation: 0,
        ),
        backgroundColor: widget.backgroundColor,
        body: helpCenterAsync.when(
          data: (data) {
            return CustomTopNavigator(
              navigatorKey: helpcCenterNavigatorKey,
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
              ],
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
                    'Failed to load',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: widget.textColor,
                      fontFamily: 'Inter',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Try again later',
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
}
