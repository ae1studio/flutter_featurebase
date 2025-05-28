part of featurebase;

class _CommentSection extends StatefulWidget {
  final fb.Organization organization;
  final AsyncValue<fb.ResultsPagination<fb.Comment>> comments;
  const _CommentSection({
    // ignore: unused_element_parameter
    super.key,
    required this.comments,
    required this.organization,
  });

  @override
  State<_CommentSection> createState() => _CommentSectionState();
}

class _CommentSectionState extends State<_CommentSection> {
  @override
  Widget build(BuildContext context) {
    return widget.comments.when(
      data: (data) => SliverList.builder(
        itemCount: data.results.length,
        itemBuilder: (context, index) {
          final comment = data.results[index];
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  // Vertical line
                  Positioned(
                    left: 15, // Centers the line with the avatar
                    top: 0,
                    bottom: 0,
                    child: Container(
                      width: 2,
                      color: _mutedColor(context).withValues(alpha: 0.1),
                    ),
                  ),
                  // Replies
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 16,
                              backgroundImage: CachedNetworkImageProvider(
                                  comment.user.picture!),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              comment.user.name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '• ${_daysAgo(comment.createdAt)}',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.color,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 4),
                          child: _RenderHtmlWidget(
                            html: comment.content,
                            locale: const Locale('en'),
                            textColor: _mutedColor(context),
                            renderMode: RenderMode.column,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 4),
                          child: Row(
                            children: [
                              _buildVoteButtons(comment),
                              const SizedBox(width: 16),
                              // TextButton(
                              //   onPressed: () {/* Handle reply */},
                              //   child: Text('Reply'),
                              // ),
                            ],
                          ),
                        ),
                        if (comment.replies.isNotEmpty)
                          _buildReplies(comment.replies),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      error: (error, stack) => SliverToBoxAdapter(
        child: ErrorWidget(error),
      ),
      loading: () => SliverToBoxAdapter(
        child: Center(
          child: CircularProgressIndicator(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }

  Widget _buildReplies(List<fb.Comment> replies) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: replies.map((reply) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                // Vertical line
                Positioned(
                  left: 15, // Centers the line with the avatar
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: 2,
                    color: _mutedColor(context).withValues(alpha: 0.1),
                  ),
                ),
                // Replies
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundImage: NetworkImage(reply.user.picture!),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          reply.user.name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '• ${_daysAgo(reply.createdAt)}',
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodySmall?.color,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 4),
                      child: _RenderHtmlWidget(
                        html: reply.content,
                        locale: const Locale('en'),
                        textColor: _mutedColor(context),
                        renderMode: RenderMode.column,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 4),
                      child: Row(
                        children: [
                          _buildVoteButtons(reply),
                          const SizedBox(width: 16),
                          // TextButton(
                          //   onPressed: () {/* Handle reply */},
                          //   child: Text('Reply'),
                          // ),
                        ],
                      ),
                    ),
                    if (reply.replies.isNotEmpty) _buildReplies(reply.replies),
                  ],
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildVoteButtons(fb.Comment comment) {
    return Row(
      children: [
        _FadeTapWidget(
          onTap: () {
            _callHaptic();
          },
          child: Icon(
            Icons.keyboard_arrow_up_rounded,
            size: 20,
            color: comment.upvoted ? Colors.green : _mutedColor(context),
          ),
        ),
        const SizedBox(width: 2),
        Text(comment.upvotes.toString()),
      ],
    );
  }
}
