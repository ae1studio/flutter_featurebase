// ignore_for_file: unused_element, unused_element_parameter

part of featurebase;

class _SafeCachedNetworkImage extends StatelessWidget {
  final String? imageUrl;
  final double? height, width;
  final Widget Function(BuildContext context, String url)? placeholder;
  final Widget Function(BuildContext context, String url, dynamic error)?
      errorWidget;
  final BoxFit fit;
  final Duration fadeInDuration;
  const _SafeCachedNetworkImage({
    // ignore: unused_element, unused_element_parameter
    super.key,
    this.imageUrl,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    this.fadeInDuration = const Duration(milliseconds: 500),
    this.placeholder,
    this.errorWidget,
  });

  @override
  Widget build(BuildContext context) {
    //If the image url is null and theres no error widget set
    if (imageUrl == null && errorWidget == null) {
      return Icon(
        Icons.image_not_supported_rounded,
      );
    }

    //If the image url is null
    if (imageUrl == null && errorWidget != null) {
      return SizedBox(
        height: height,
        width: width,
        child: errorWidget!(context, imageUrl.toString(), null),
      );
    }

    ///Temp till https://github.com/flutter/flutter/issues/160127 is fixed
    if (kIsWeb) {
      return SizedBox(
        height: height,
        width: width,
        child: Image.network(
          imageUrl!,
          fit: fit,
          errorBuilder: (context, error, stackTrace) {
            return Icon(
              Icons.image_not_supported_rounded,
            );
          },
        ),
      );
    }

    return CachedNetworkImage(
      imageUrl: imageUrl!,
      fadeInDuration: const Duration(milliseconds: 200),
      height: height,
      width: width,
      fit: fit,
      placeholder: placeholder,
      errorWidget: errorWidget ??
          (context, url, error) => Icon(
                Icons.image_not_supported_rounded,
              ),
    );
  }
}
