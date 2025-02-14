part of featurebase;

class _PostStatusBadge extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final fb.Post post;
  const _PostStatusBadge({
    required this.post,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: _fbColorStringToColor(
          post.status.color,
          context,
        ).withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: _fbColorStringToColor(
            post.status.color,
            context,
          ).withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: Text(
        post.status.name,
        style: Theme.of(context).textTheme.displayLarge!.copyWith(
              fontSize: 14,
              color: _fbColorStringToColor(
                post.status.color,
                context,
              ),
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}
