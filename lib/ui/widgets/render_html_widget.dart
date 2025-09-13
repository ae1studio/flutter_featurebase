part of featurebase;

class _RenderHtmlWidget extends ConsumerWidget {
  final String html;
  final RenderMode renderMode;
  final Locale locale;
  final Color textColor;

  const _RenderHtmlWidget({
    required this.html,
    this.renderMode = RenderMode.sliverList,
    required this.locale,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HtmlWidget(
      html,
      onTapUrl: (url) async {
        if (url.contains(
                'https://${_fbService.api.organizationName}.featurebase.app') &&
            url.contains('/articles/')) {
          _callHaptic();
          // Extract the article ID from the URL
          final articleId = url.split('/articles/')[1].split('-')[0];

          fb.Article temp = await ref.read(
              getHelpCenterArticleProvider(articleId, _getLocale(locale))
                  .future);

          if (context.mounted) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => _ArticleView(
                  article: temp,
                  textColor: textColor,
                  locale: locale,
                ),
              ),
            );
          }

          return true;
        }

        if (await canLaunchUrlString(url)) {
          _callHaptic();
          launchUrlString(url);
          return true;
        }
        return false;
      },
      customWidgetBuilder: (element) {
        // Display images
        if (element.outerHtml.contains('img')) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: _SafeCachedNetworkImage(
              imageUrl: element.attributes['src'],
              placeholder: (context, url) => Padding(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
          );
        }

        // Callouts
        if (element.outerHtml.contains('callout-component')) {
          return Container(
            margin: const EdgeInsets.only(bottom: 8, top: 5),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: _fbColorStringToColor(
                  element.attributes['color'] ?? 'None', context),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              element.text,
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Inter',
                color: _calculateTextColor(_fbColorStringToColor(
                    element.attributes['color'] ?? 'None', context)),
              ),
            ),
          );
        }

        // Divider
        if (element.outerHtml.contains('<hr>')) {
          return Divider(
            color: textColor.withValues(alpha: 0.2),
          );
        }

        return null;
      },
      customStylesBuilder: (element) {
        if (element.outerHtml.contains('<p>')) {
          Color color = _darkenColor(textColor, amount: 0.15);
          return {
            'color':
                'rgb(${(color.r * 255).toInt()}, ${(color.g * 255).toInt()}, ${(color.b * 255).toInt()})',
            'font-weight': '500',
          };
        }

        if (element.outerHtml.contains('<h1>')) {
          Color color = textColor;
          return {
            'color':
                'rgb(${(color.r * 255).toInt()}, ${(color.g * 255).toInt()}, ${(color.b * 255).toInt()})',
            'font-weight': '700',
            'font-size': '22px',
          };
        }

        if (element.outerHtml.contains('<h2>')) {
          Color color = textColor;
          return {
            'color':
                'rgb(${(color.r * 255).toInt()}, ${(color.g * 255).toInt()}, ${(color.b * 255).toInt()})',
            'font-weight': '600',
            'font-size': '18px',
          };
        }

        if (element.outerHtml.contains('<h3>')) {
          Color color = textColor;
          return {
            'color':
                'rgb(${(color.r * 255).toInt()}, ${(color.g * 255).toInt()}, ${(color.b * 255).toInt()})',
            'font-weight': '600',
            'font-size': '17px',
          };
        }

        if (element.classes.contains('link')) {
          Color color = Theme.of(context).primaryColor;
          return {
            'color': 'rgb(${color.r}, ${color.g}, ${color.b})',
            'text-decoration': 'none',
          };
        }
        return null;
      },
      textStyle: TextStyle(
        fontSize: 15,
        fontFamily: 'Inter',
        color: textColor,
        fontWeight: FontWeight.w500,
      ),
      renderMode: renderMode,
    );
  }
}
