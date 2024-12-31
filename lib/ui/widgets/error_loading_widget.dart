part of featurebase;

class _ErrorLoadingWidget extends StatelessWidget {
  final Color textColor;
  const _ErrorLoadingWidget({
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
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
            FeaturebaseLocalizations.of(context).failedToLoad,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: textColor,
              fontFamily: 'Inter',
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            FeaturebaseLocalizations.of(context).tryAgainLater,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: textColor.withOpacity(0.7),
              fontFamily: 'Inter',
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
