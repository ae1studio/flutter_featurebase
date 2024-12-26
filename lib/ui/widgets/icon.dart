part of featurebase;

class _FBIconWidget extends StatelessWidget {
  final fb.FBIcon? icon;
  final Color primaryColor;
  final double size;
  const _FBIconWidget({
    // ignore: unused_element
    super.key,
    required this.icon,
    required this.primaryColor,
    this.size = 18,
  });

  @override
  Widget build(BuildContext context) {
    if (icon?.type == 'predefined') {
      return SvgPicture.asset(
        'packages/featurebase/assets/icons/hero/${_pascalToKebabIcon(icon!.value)}.svg',
        height: size,
        width: size,
        colorFilter: ColorFilter.mode(
          primaryColor.withOpacity(0.7),
          BlendMode.srcIn,
        ),
      );
    }

    return Icon(
      Icons.article_rounded,
      color: primaryColor.withOpacity(0.8),
      size: size,
    );
  }
}
