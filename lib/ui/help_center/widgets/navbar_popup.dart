part of featurebase;

class _NavbarPopupWidget extends StatelessWidget {
  final fb.HelpCenter helpCenter;
  final Color textColor;
  final Color primaryColor;
  const _NavbarPopupWidget({
    required this.helpCenter,
    required this.textColor,
    required this.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Scaffold(
        appBar: AppBar(
          title: null,
          leading: null,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () => Navigator.pop(context),
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
          color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.9),
          child: SafeArea(
            child: Column(
              children: [
                //TODO: Add collection list
                const Spacer(),
                Divider(
                  color: textColor.withOpacity(0.08),
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
                                  primaryColor: textColor.withOpacity(0.7),
                                  size: 19,
                                ),
                              ),
                            Expanded(
                              child: Text(
                                helpCenter.navItems[index].title,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: textColor.withOpacity(0.7),
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
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
