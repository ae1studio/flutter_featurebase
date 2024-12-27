part of featurebase;

class _FBIconWidget extends StatelessWidget {
  final fb.FBIcon? icon;
  final Color textColor;
  final double size;
  final bool isDark;
  const _FBIconWidget({
    // ignore: unused_element
    super.key,
    required this.icon,
    required this.textColor,
    this.size = 18,
    this.isDark = true,
  });

  @override
  Widget build(BuildContext context) {
    if (icon?.type == 'predefined') {
      return SvgPicture.asset(
        'packages/featurebase/assets/icons/hero/${_pascalToKebabIcon(icon!.value)}.svg',
        height: size,
        width: size,
        colorFilter: ColorFilter.mode(
          isDark
              ? Theme.of(context).primaryColor.withOpacity(0.8)
              : Theme.of(context).primaryColor,
          BlendMode.srcIn,
        ),
      );
    }

    if (icon?.type == 'emoji') {
      return Text(
        icon!.value,
        style: TextStyle(
          fontSize: size,
          color: textColor,
        ),
      );
    }

    return Icon(
      Icons.article_rounded,
      color: Theme.of(context).primaryColor.withOpacity(0.8),
      size: size,
    );
  }
}
