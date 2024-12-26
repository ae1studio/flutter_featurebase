part of featurebase;

class _CollectionView extends StatefulWidget {
  final fb.Collection collection;
  final Color textColor;
  const _CollectionView({
    // ignore: unused_element
    super.key,
    required this.collection,
    required this.textColor,
  });

  @override
  State<_CollectionView> createState() => _CollectionViewState();
}

class _CollectionViewState extends State<_CollectionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.collection.icon != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: _FBIconWidget(
                        icon: widget.collection.icon,
                        primaryColor: Theme.of(context).primaryColor,
                        size: 36,
                      ),
                    ),
                  Text(
                    widget.collection.name,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: widget.textColor,
                      fontFamily: 'Inter',
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    widget.collection.description,
                    style: TextStyle(
                      color: widget.textColor.withOpacity(0.7),
                      fontFamily: 'Inter',
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
