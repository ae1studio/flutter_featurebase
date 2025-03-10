part of featurebase;

class _PostCard extends ConsumerStatefulWidget {
  final fb.Post post;
  final Color textColor;
  final Locale locale;
  final fb.Organization organization;
  const _PostCard({
    super.key,
    required this.post,
    required this.textColor,
    required this.locale,
    required this.organization,
  });

  @override
  ConsumerState<_PostCard> createState() => _PostCardState();
}

class _PostCardState extends ConsumerState<_PostCard> {
  late fb.Post post;

  @override
  void initState() {
    post = widget.post;
    super.initState();
  }

  Color _backgroundColor(BuildContext context) {
    if (post.upvoted) {
      return Colors.green.withValues(alpha: 0.1);
    }
    if (post.downvoted) {
      return Colors.red.withValues(alpha: 0.1);
    }
    return Theme.of(context).scaffoldBackgroundColor;
  }

  void _upvote() async {
    // Update local state based on provider result
    upvotePost(
      post: post,
      updatePost: (updatedPost) {
        ref
            .read(feedbackSubmissionsListProvider.notifier)
            .updatePost(updatedPost);
        setState(() {
          post = updatedPost;
        });
      },
    );
  }

  void _downvote() async {
    // Update local state based on provider result
    downvotePost(
      post: post,
      updatePost: (updatedPost) {
        ref
            .read(feedbackSubmissionsListProvider.notifier)
            .updatePost(updatedPost);
        setState(() {
          post = updatedPost;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: widget.textColor.withValues(alpha: 0.1),
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

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => _PostView(
                      post: widget.post,
                      organization: widget.organization,
                    ),
                  ),
                );
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
                      color: widget.textColor.withValues(alpha: 0.1),
                      width: 1,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (!post.status.isDefault)
                      _PostStatusBadge(
                        margin: const EdgeInsets.only(bottom: 6),
                        post: post,
                      ),
                    Text(
                      widget.post.title,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                      maxLines:
                          _stripHtmlTags(widget.post.content).trimLeft().isEmpty
                              ? 2
                              : 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                    const SizedBox(height: 3),
                    if (_stripHtmlTags(widget.post.content)
                        .trimLeft()
                        .isNotEmpty)
                      Text(
                        _stripHtmlTags(widget.post.content).trimLeft(),
                        style:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  fontSize: 15,
                                  color: _mutedColor(context),
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
                            imageUrl: widget.post.user.picture,
                            width: 18,
                            height: 18,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          widget.post.user.name,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 15,
                                color: _mutedColor(context),
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          _daysAgo(widget.post.date.toLocal()),
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 14,
                                color: widget.textColor.withValues(alpha: 0.5),
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
                          textColor: widget.textColor,
                          size: 16,
                          primaryColor: widget.textColor.withValues(alpha: 0.4),
                        ),
                        const SizedBox(width: 2),
                        Text(
                          '${widget.post.commentCount}',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 15,
                                color: widget.textColor.withValues(alpha: 0.4),
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
                            color: widget.textColor.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: widget.textColor.withValues(alpha: 0.1),
                              width: 1,
                            ),
                          ),
                          child: Text(
                            widget.post.postCategory.category,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  fontSize: 14,
                                  color:
                                      widget.textColor.withValues(alpha: 0.8),
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
                    _upvote();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Icon(
                      Icons.keyboard_arrow_up_rounded,
                      size: 21,
                      color: post.upvoted ? Colors.green : _mutedColor(context),
                    ),
                  ),
                ),
                Text(
                  widget.post.upvotes.toString(),
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 16,
                        color: _mutedColor(context),
                      ),
                ),
                if (widget.organization.settings.downvotesEnabled)
                  _FadeTapWidget(
                    onTap: () {
                      _callHaptic();
                      _downvote();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 21,
                        color:
                            post.downvoted ? Colors.red : _mutedColor(context),
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
