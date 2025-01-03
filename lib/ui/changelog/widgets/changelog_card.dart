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
              Expanded(
                child: Text(
                  DateFormat.yMMMMd(_getLocale(locale)).format(changelog.date),
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: textColor.withOpacity(0.7),
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              Wrap(
                spacing: 5,
                children: List.generate(
                  changelog.changelogCategories.length,
                  (index) => _buildCategoryTag(
                      changelog.changelogCategories[index], context),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          // Featured image
          if (changelog.featuredImage != null)
            Container(
              margin: const EdgeInsets.only(bottom: 10, top: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: _SafeCachedNetworkImage(
                  imageUrl: changelog.featuredImage!,
                  placeholder: (context, url) => Padding(
                    padding: const EdgeInsets.all(12),
                    child: Center(
                      child: CircularProgressIndicator(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
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

  Widget _buildCategoryTag(
      fb.ChangelogCategory category, BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
      decoration: BoxDecoration(
        color: _fbColorStringToColor(category.color, context).withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        category.name,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: _fbColorStringToColor(category.color, context),
        ),
      ),
    );
  }
}
