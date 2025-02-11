part of featurebase;

class _ActivityItemWidget extends StatelessWidget {
  final fb.UserActivity activity;

  const _ActivityItemWidget({
    super.key,
    required this.activity,
  });

  String title() {
    switch (activity.type) {
      case 'comment':
        return 'Commented on a post';
      case 'createSubmission':
        return 'Created a post';
      case 'upvote':
        return 'Upvoted a post';
      case 'downvote':
        return 'Downvoted a post';
    }
    return activity.type;
  }

  String icon() {
    switch (activity.type) {
      case 'comment':
        return 'IconChat';
      case 'createSubmission':
        return 'IconCollection';
      case 'upvote':
        return 'IconArrowUp';
      case 'downvote':
        return 'IconArrowDown';
    }
    return activity.type;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 5),
                child: _FBIconWidget(
                  icon: fb.FBIcon(
                    type: 'predefined',
                    value: icon(),
                  ),
                  textColor: _mutedColor(context),
                  primaryColor: _mutedColor(context),
                ),
              ),
              Expanded(
                child: Text(
                  title(),
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: _mutedColor(context),
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
              ),
              Text(
                _daysAgo(activity.createdAt),
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: _mutedColor(context),
                    ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
              ),
            ],
          ),
          //Post
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: _mutedColor(context).withAlpha(30),
                width: 1,
              ),
            ),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  activity.submission.title,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: _mutedColor(context),
                      ),
                ),
                if (_stripHtmlTags(activity.submission.content)
                    .trim()
                    .isNotEmpty)
                  const SizedBox(height: 2),
                if (_stripHtmlTags(activity.submission.content)
                    .trim()
                    .isNotEmpty)
                  Text(
                    _stripHtmlTags(activity.submission.content),
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: _mutedColor(context),
                        ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
              ],
            ),
          ),
          // Comment
          if (activity.comment != null)
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                _stripHtmlTags(activity.comment!.content),
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: _mutedColor(context),
                    ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
              ),
            ),
        ],
      ),
    );
  }
}
