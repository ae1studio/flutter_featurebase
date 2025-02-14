part of featurebase;

class _NavbarPopupWidget extends ConsumerWidget {
  final fb.HelpCenter helpCenter;
  final Color textColor;
  final Color primaryColor;
  final bool hideAuthors;
  final bool hideDate;
  final Locale locale;
  final BuildContext helpCenterContext;
  final Function(Locale) onLocaleChange;
  const _NavbarPopupWidget({
    required this.helpCenter,
    required this.textColor,
    required this.primaryColor,
    required this.hideAuthors,
    required this.hideDate,
    required this.locale,
    required this.helpCenterContext,
    required this.onLocaleChange,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      color: Colors.transparent,
      child: Scaffold(
        appBar: AppBar(
          title: null,
          leading: null,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                _callHaptic();
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close_rounded,
                color: _calculateTextColor(primaryColor),
              ),
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          color:
              Theme.of(context).scaffoldBackgroundColor.withValues(alpha: 0.5),
          child: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Scrollbar(
                    child: ListView.builder(
                      padding: const EdgeInsets.only(top: 15),
                      itemCount: helpCenter.structure?.length ?? 0,
                      itemBuilder: (context, index) {
                        fb.Collection collection = helpCenter.structure![index];

                        return _NavbarExpandingCollection(
                          collection: collection,
                          textColor: textColor,
                          hideAuthors: hideAuthors,
                          hideDate: hideDate,
                          locale: locale,
                          helpCenterContext: helpCenterContext,
                        );
                      },
                    ),
                  ),
                ),
                Divider(
                  color: textColor.withValues(alpha: 0.08),
                ),
                ...List.generate(
                  helpCenter.navItems.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: () {
                        _callHaptic();
                        launchUrlString(
                          helpCenter.navItems[index].url,
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        child: Row(
                          children: [
                            if (helpCenter.navItems[index].icon != null)
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 7,
                                ),
                                child: _FBIconWidget(
                                  icon: helpCenter.navItems[index].icon,
                                  textColor: textColor,
                                  primaryColor: _mutedColor(context),
                                  size: 19,
                                ),
                              ),
                            Expanded(
                              child: Text(
                                helpCenter.navItems[index].title,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: _mutedColor(context),
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
                    ),
                  ),
                ),
                if (helpCenter.availableLocales.length > 1)
                  Divider(
                    color: textColor.withValues(alpha: 0.08),
                  ),
                if (helpCenter.availableLocales.length > 1)
                  Row(
                    children: [
                      const Spacer(),
                      _LanguagePickerWidget(
                        locale: locale,
                        availableLocales: helpCenter.availableLocales,
                        onLocaleChange: onLocaleChange,
                        primaryColor: primaryColor,
                        textColor: textColor,
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
