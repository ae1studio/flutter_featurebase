part of featurebase;

class _ChangelogCard extends StatelessWidget {
  final fb.Changelog changelog;
  final Color textColor;
  final Locale locale;
  const _ChangelogCard({
    required this.changelog,
    required this.textColor,
    required this.locale,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 10, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: textColor.withOpacity(0.2),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Text(
                DateFormat.yMMMMd(_getLocale(locale)).format(changelog.date),
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: textColor.withOpacity(0.7),
                  fontFamily: 'Inter',
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            changelog.title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: textColor,
              fontFamily: 'Inter',
            ),
          ),
          const SizedBox(height: 20),
          _RenderHtmlWidget(
            html: changelog.content,
            locale: locale,
            textColor: textColor,
            renderMode: RenderMode.column,
          ),
        ],
      ),
    );
  }
}
