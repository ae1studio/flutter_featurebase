part of featurebase;

class _CollectionCard extends StatelessWidget {
  final fb.Collection collection;
  final Color textColor;
  final bool hideAuthors;
  final Locale locale;
  const _CollectionCard({
    // ignore: unused_element
    super.key,
    required this.collection,
    required this.textColor,
    required this.hideAuthors,
    required this.locale,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => _CollectionView(
              collection: collection,
              textColor: textColor,
              hideAuthors: hideAuthors,
              locale: locale,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: textColor.withOpacity(0.05),
          ),
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).cardColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Collection Icon
            if (collection.icon != null)
              Container(
                margin: const EdgeInsets.only(bottom: 6),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: textColor.withOpacity(0.05),
                  ),
                  color: Theme.of(context).primaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: _FBIconWidget(
                  icon: collection.icon,
                  textColor: textColor,
                ),
              ),
            Text(
              collection.name,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
              ),
            ),
            const SizedBox(height: 2),
            if (collection.description.trim().isNotEmpty)
              Text(
                collection.description,
                style: TextStyle(
                  color: textColor.withOpacity(0.7),
                  fontSize: 14,
                  fontFamily: 'Inter',
                ),
              ),
            const SizedBox(height: 6),
            Row(
              children: [
                if (!hideAuthors)
                  _AuthorsImageStack(
                    authors: collection.authors,
                  ),
                if (!hideAuthors) const SizedBox(width: 2),
                StyledText(
                  text: FeaturebaseLocalizations.of(context).countArticles(
                    collection.structure?.length ?? 0,
                  ),
                  style: TextStyle(
                    color: textColor.withOpacity(0.7),
                    fontSize: 13,
                    fontFamily: 'Inter',
                  ),
                  tags: {
                    'strong': StyledTextTag(
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: textColor.withOpacity(0.7),
                        fontSize: 13,
                        fontFamily: 'Inter',
                      ),
                    ),
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
