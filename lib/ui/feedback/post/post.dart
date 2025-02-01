part of featurebase;

class _PostView extends ConsumerStatefulWidget {
  final fb.Post post;
  final fb.Organization organization;
  const _PostView({
    // ignore: unused_element
    super.key,
    required this.post,
    required this.organization,
  });

  @override
  ConsumerState<_PostView> createState() => _PostViewState();
}

class _PostViewState extends ConsumerState<_PostView> {
  late fb.Post post;

  @override
  void initState() {
    post = widget.post;
    super.initState();
  }

  Color _voteButtonBackgroundColor(BuildContext context) {
    if (post.upvoted) {
      return Colors.green.withOpacity(0.1);
    }
    if (post.downvoted) {
      return Colors.red.withOpacity(0.1);
    }
    return Theme.of(context).cardColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: _SafeCachedNetworkImage(
                            imageUrl: widget.post.user.picture,
                            width: 20,
                            height: 20,
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
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color!
                                    .withOpacity(0.7),
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            _daysAgo(widget.post.date.toLocal()),
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  fontSize: 14,
                                  color: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .color!
                                      .withOpacity(0.5),
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        PopupMenuButton<int>(
                          icon: Icon(
                            Platform.isIOS ? Icons.more_horiz : Icons.more_vert,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                          ),
                          color: Theme.of(context).cardColor,
                          onOpened: () {
                            _callHaptic();
                          },
                          itemBuilder: (BuildContext context) {
                            return [
                              PopupMenuItem<int>(
                                onTap: () async {
                                  _callHaptic();
                                  await Share.share(
                                    _generateUrl(
                                        widget.post, widget.organization),
                                  );
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Platform.isIOS
                                          ? Icons.share_rounded
                                          : Icons.ios_share_rounded,
                                      color: Theme.of(context).iconTheme.color,
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      'Share',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .copyWith(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                              PopupMenuDivider(),
                              if (widget.post.user.id == _fbService.user?.id)
                                PopupMenuItem<int>(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.edit_rounded,
                                        color:
                                            Theme.of(context).iconTheme.color,
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                        'Edit',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              if (widget.post.user.id == _fbService.user?.id)
                                PopupMenuItem<int>(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.delete_rounded,
                                        color: Colors.red,
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                        'Remove',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                            ];
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    SelectableText(
                      widget.post.title,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                    ),
                    const SizedBox(height: 3),
                    _RenderHtmlWidget(
                      html: widget.post.content,
                      locale: const Locale('en'),
                      textColor:
                          Theme.of(context).textTheme.displayLarge!.color!,
                      renderMode: RenderMode.column,
                      hideAuthors: true,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        _PostStatusBadge(
                          margin: const EdgeInsets.only(right: 6),
                          post: post,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: _FBIconWidget(
                                  icon: const fb.FBIcon(
                                    type: 'predefined',
                                    value: 'IconChat',
                                  ),
                                  isDark: false,
                                  textColor: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .color!,
                                  size: 16,
                                  primaryColor: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .color!
                                      .withOpacity(0.4),
                                ),
                              ),
                              Text(
                                '${widget.post.commentCount}',
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .color!
                                          .withOpacity(0.7),
                                    ),
                              ),
                              const SizedBox(width: 3),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: _voteButtonBackgroundColor(context),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Icon(
                                  Icons.keyboard_arrow_up_rounded,
                                  size: 21,
                                  color: post.upvoted
                                      ? Colors.green
                                      : Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .color!
                                          .withOpacity(0.7),
                                ),
                              ),
                              Text(
                                '${widget.post.upvotes}',
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .color!
                                          .withOpacity(0.7),
                                    ),
                              ),
                              if (widget.organization.settings.downvotesEnabled)
                                Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    size: 21,
                                    color: post.downvoted
                                        ? Colors.red
                                        : Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .color!
                                            .withOpacity(0.7),
                                  ),
                                ),
                              if (!widget
                                  .organization.settings.downvotesEnabled)
                                const SizedBox(width: 10),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            //Bottom
            SliverToBoxAdapter(
              child: Container(
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
