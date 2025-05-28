part of featurebase;

class _CommentBox extends StatefulWidget {
  /// The post to reply to.
  final fb.Post post;

  /// The comment to reply to.
  final fb.Comment? comment;

  const _CommentBox({
    // ignore: unused_element_parameter
    super.key,
    required this.post,
    this.comment,
  });

  @override
  State<_CommentBox> createState() => _CommentBoxState();
}

class _CommentBoxState extends State<_CommentBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: _mutedColor(context).withValues(alpha: 0.2),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Add a comment',
                fillColor: Theme.of(context).cardColor,
                border: InputBorder.none,
              ),
            ),
            Row(
              children: [
                const Spacer(),
                MaterialButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  color: Theme.of(context).primaryColor,
                  textColor:
                      _calculateTextColor(Theme.of(context).primaryColor),
                  child: const Text('Comment'),
                ),
                const SizedBox(width: 6),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
