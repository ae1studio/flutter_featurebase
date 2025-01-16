part of featurebase;

class _PostCard extends StatelessWidget {
  final fb.Post post;
  final Color textColor;
  final Locale locale;
  const _PostCard({
    required this.post,
    required this.textColor,
    required this.locale,
  });

  Color _backgroundColor(BuildContext context) {
    if (post.upvoted) {
      return Colors.green.withOpacity(0.1);
    }
    if (post.downvoted) {
      return Colors.red.withOpacity(0.1);
    }
    return Theme.of(context).scaffoldBackgroundColor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: textColor.withOpacity(0.1),
            width: 1,
          ),
        ),
        color: _backgroundColor(context),
      ),
      child: Row(
        children: [
          Expanded(
            child: _FadeTapWidget(
              onTap: () {
                _callHaptic();
              },
              child: Container(
                padding: const EdgeInsets.only(
                  top: 12,
                  bottom: 12,
                  left: 12,
                  right: 8,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  border: Border(
                    right: BorderSide(
                      color: textColor.withOpacity(0.1),
                      width: 1,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.title,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontSize: 17,
                          ),
                      maxLines: _stripHtmlTags(post.content).trimLeft().isEmpty
                          ? 2
                          : 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                    const SizedBox(height: 3),
                    if (_stripHtmlTags(post.content).trimLeft().isNotEmpty)
                      Text(
                        _stripHtmlTags(post.content).trimLeft(),
                        style:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  fontSize: 15,
                                  color: textColor.withOpacity(0.7),
                                  fontWeight: FontWeight.w500,
                                ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                      ),
                    const SizedBox(height: 8),
                    //User info
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: _SafeCachedNetworkImage(
                            imageUrl: post.user.picture,
                            width: 18,
                            height: 18,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          post.user.name,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 15,
                                color: textColor.withOpacity(0.7),
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          _daysAgo(post.date.toLocal()),
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 14,
                                color: textColor.withOpacity(0.5),
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    //Comment count and board name
                    Row(
                      children: [
                        _FBIconWidget(
                          icon: const fb.FBIcon(
                            type: 'predefined',
                            value: 'IconChat',
                          ),
                          isDark: false,
                          textColor: textColor,
                          size: 16,
                          primaryColor: textColor.withOpacity(0.4),
                        ),
                        const SizedBox(width: 2),
                        Text(
                          '${post.commentCount}',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 15,
                                color: textColor.withOpacity(0.4),
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: textColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: textColor.withOpacity(0.1),
                              width: 1,
                            ),
                          ),
                          child: Text(
                            post.postCategory.category,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  fontSize: 14,
                                  color: textColor.withOpacity(0.8),
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 52,
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Column(
              children: [
                _FadeTapWidget(
                  onTap: () {
                    _callHaptic();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Icon(
                      Icons.keyboard_arrow_up_rounded,
                      size: 21,
                      color: post.upvoted
                          ? Colors.green
                          : textColor.withOpacity(0.7),
                    ),
                  ),
                ),
                Text(
                  post.upvotes.toString(),
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 16,
                        color: textColor.withOpacity(0.7),
                      ),
                ),
                _FadeTapWidget(
                  onTap: () {
                    _callHaptic();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 21,
                      color: post.downvoted
                          ? Colors.red
                          : textColor.withOpacity(0.7),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
