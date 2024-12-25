part of featurebase;

class _HelpCenterView extends ConsumerStatefulWidget {
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

  const _HelpCenterView({
    required this.logo,
    required this.url,
    required this.primaryColor,
    this.textColor = Colors.black,
    this.backgroundColor,
  });

  @override
  ConsumerState<_HelpCenterView> createState() => _HelpCenterViewState();
}

class _HelpCenterViewState extends ConsumerState<_HelpCenterView> {
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

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: widget.textColor,
          ),
        ),
        title: widget.logo,
        centerTitle: true,
        backgroundColor: widget.primaryColor,
        surfaceTintColor: widget.primaryColor,
        elevation: 0,
      ),
      backgroundColor: widget.backgroundColor,
      body: helpCenterAsync.when(
        data: (data) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        data.title,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: widget.textColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        data.description,
                        style: TextStyle(
                          color: widget.textColor.withOpacity(0.7),
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

                  return Container(
                    margin:
                        const EdgeInsets.only(bottom: 10, right: 10, left: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: widget.textColor.withOpacity(0.05),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          collection.name,
                          style: TextStyle(
                            color: widget.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          collection.description,
                          style: TextStyle(
                            color: widget.textColor.withOpacity(0.7),
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 4),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: (collection.structure?.length).toString(),
                                style: TextStyle(
                                  color: widget.textColor.withOpacity(0.7),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text: ' articles',
                                style: TextStyle(
                                  color: widget.textColor.withOpacity(0.7),
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          );
        },
        error: (error, stackTrace) {
          return Text(error.toString());
        },
        loading: () {
          return Center(
            child: CircularProgressIndicator(
              color: widget.primaryColor,
            ),
          );
        },
      ),
    );
  }
}
