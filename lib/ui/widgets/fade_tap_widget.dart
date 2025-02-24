part of featurebase;

class _FadeTapWidget extends StatefulWidget {
  final Widget child;
  final Function()? onTap;
  const _FadeTapWidget({
    required this.child,
    this.onTap,
  });

  @override
  State<_FadeTapWidget> createState() => _FadeTapWidgetState();
}

class _FadeTapWidgetState extends State<_FadeTapWidget>
    with TickerProviderStateMixin {
  late AnimationController o;

  @override
  void initState() {
    o = AnimationController(
      vsync: this,
      value: 1.0,
      duration: const Duration(milliseconds: 170),
      lowerBound: 0.7,
      upperBound: 1.0,
    );
    super.initState();
  }

  @override
  void dispose() {
    o.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: widget.onTap != null
          ? SystemMouseCursors.click
          : SystemMouseCursors.basic,
      child: GestureDetector(
        onTapDown: (TapDownDetails details) {
          if (widget.onTap != null) {
            o.reverse();
          }
        },
        onTapUp: (TapUpDetails details) {
          if (widget.onTap != null) {
            o.forward();
          }
        },
        onTapCancel: () {
          if (widget.onTap != null) {
            o.forward();
          }
        },
        onTap: widget.onTap,
        child: Opacity(
          opacity: o.value,
          child: widget.child,
        ),
      ),
    );
  }
}
