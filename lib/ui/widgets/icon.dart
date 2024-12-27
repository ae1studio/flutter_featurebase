part of featurebase;

class _FBIconWidget extends StatelessWidget {
  final fb.FBIcon? icon;
  final Color textColor;
  final Color? primaryColor;
  final double size;
  final bool isDark;
  const _FBIconWidget({
    // ignore: unused_element
    super.key,
    required this.icon,
    required this.textColor,
    this.size = 18,
    this.isDark = true,
    this.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    Color color = primaryColor ?? Theme.of(context).primaryColor;

    if (icon?.type == 'predefined') {
      return SvgPicture.asset(
        'packages/featurebase/assets/icons/hero/${_pascalToKebabIcon(icon!.value)}.svg',
        height: size,
        width: size,
        colorFilter: ColorFilter.mode(
          isDark ? color.withOpacity(0.8) : color,
          BlendMode.srcIn,
        ),
      );
    }

    if (icon?.type == 'emoji') {
      return Text(
        icon!.value,
        style: TextStyle(
          fontSize: (size - 2),
          color: isDark ? color.withOpacity(0.8) : textColor,
        ),
      );
    }

    return Icon(
      Icons.article_rounded,
      color: color.withOpacity(0.8),
      size: size,
    );
  }
}
