part of featurebase;

class _AuthorsImageStack extends StatelessWidget {
  final List<fb.Author> authors;
  const _AuthorsImageStack({
    // ignore: unused_element, unused_element_parameter
    super.key,
    required this.authors,
  });

  @override
  Widget build(BuildContext context) {
    final double offset = authors.length <= 2 ? 15 : -2.5 * authors.length + 23;

    return Container(
      margin: const EdgeInsets.only(right: 5, left: 2),
      child: Stack(
        children: List.generate(
          authors.length,
          (int index) {
            int currentIndex = authors.length - 1 - index;
            return buildAuthorImage(
                context, currentIndex, authors[currentIndex], offset);
          },
        ),
      ),
    );
  }

  Widget buildAuthorImage(
      BuildContext context, int index, fb.Author author, double offset) {
    return Container(
      padding: EdgeInsets.only(left: index * offset),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Theme.of(context).scaffoldBackgroundColor,
            width: 2,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: _SafeCachedNetworkImage(
            height: 20,
            width: 20,
            imageUrl: author.avatarUrl,
            errorWidget: (context, url, error) => Container(
              height: 20,
              width: 20,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Icon(
                Icons.person_rounded,
                size: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
