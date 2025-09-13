part of featurebase;

class _ProfileView extends ConsumerStatefulWidget {
  final fb.Organization organization;
  final fb.User user;
  const _ProfileView({
    // ignore: unused_element, unused_element_parameter
    super.key,
    required this.user,
    required this.organization,
  });

  @override
  ConsumerState<_ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends ConsumerState<_ProfileView> {
  String selectedActivity = 'allActivity';

  List<fb.UserActivity> selectedActivities(List<fb.UserActivity> a) {
    switch (selectedActivity) {
      case 'allActivity':
        return a;
      case 'comment':
        return a.where((e) => e.type == 'comment').toList();
      case 'createSubmission':
        return a.where((e) => e.type == 'createSubmission').toList();
      case 'upvote':
        return a.where((e) => e.type == 'upvote').toList();
      case 'downvote':
        return a.where((e) => e.type == 'downvote').toList();
    }

    return a;
  }

  @override
  Widget build(BuildContext context) {
    AsyncValue<List<fb.UserActivity>> activities =
        ref.watch(getUserActivitiesProvider(widget.user.id));

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            _callHaptic();
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: _calculateTextColor(Theme.of(context).primaryColor),
          ),
        ),
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 19,
                fontWeight: FontWeight.w600,
              ),
        ),
        actions: [],
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        surfaceTintColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(
                      color: Theme.of(context).cardColor,
                      width: 2,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: _SafeCachedNetworkImage(
                      imageUrl: widget.user.picture,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.user.name,
                        style:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: _mutedColor(context).withAlpha(30),
                width: 1,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 45,
                  child: Scrollbar(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildActivityTab(
                          label: 'All Activity',
                          type: 'allActivity',
                          icon: 'IconLightningBolt',
                        ),
                        _buildActivityTab(
                          label: 'Comments',
                          type: 'comment',
                          icon: 'IconChatAlt2',
                        ),
                        _buildActivityTab(
                          label: 'Posts',
                          type: 'createSubmission',
                          icon: 'IconCollection',
                        ),
                        _buildActivityTab(
                          label: 'Upvotes',
                          type: 'upvote',
                          icon: 'IconArrowUp',
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 3,
                  color: _mutedColor(context).withAlpha(30),
                ),
                buildActivityContent(activities),
              ],
            ),
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }

  Widget _buildActivityTab({
    required String label,
    required String type,
    required String icon,
  }) {
    return _FadeTapWidget(
      onTap: () {
        _callHaptic();
        setState(() {
          selectedActivity = type;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(left: 7, top: 5, bottom: 5),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: selectedActivity == type
              ? Border.all(
                  color: _mutedColor(context).withAlpha(30),
                  width: 1,
                )
              : null,
        ),
        child: Center(
          child: Row(
            children: [
              _FBIconWidget(
                icon: fb.FBIcon(
                  type: 'predefined',
                  value: icon,
                ),
                textColor: _mutedColor(context),
                primaryColor: _mutedColor(context),
              ),
              const SizedBox(width: 4),
              Text(
                label,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: _mutedColor(context),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildActivityContent(AsyncValue<List<fb.UserActivity>> activities) {
    return activities.when(
      data: (data) {
        List<fb.UserActivity> a = selectedActivities(data);

        // No activity found for selected activity
        if (a.isEmpty) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _FBIconWidget(
                    icon: fb.FBIcon(
                      type: 'predefined',
                      value: 'IconLightningBolt',
                    ),
                    textColor: _mutedColor(context),
                    primaryColor: _mutedColor(context),
                    size: 35,
                    isDark: false,
                  ),
                  const SizedBox(height: 5),
                  Center(
                    child: Text(
                      'No activity found',
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            color: _mutedColor(context),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        return Column(
          children: List.generate(
            a.length,
            (index) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _FadeTapWidget(
                  onTap: () async {
                    _callHaptic();

                    // Get post
                    fb.Post? post = await _fbService.api.feedback.getSinglePost(
                      postId: a[index].submissionId,
                    );

                    if (post == null) {
                      return;
                    }

                    // Navigate to post
                    Navigator.pop(context);
                    Navigator.push(
                      _feedbackNavigatorKey.currentContext!,
                      MaterialPageRoute(
                        builder: (context) => _PostView(
                          post: post,
                          organization: widget.organization,
                        ),
                      ),
                    );
                  },
                  child: _ActivityItemWidget(
                    key: Key('$index-${a[index].submissionId}'),
                    activity: a[index],
                  ),
                ),
                if (index != a.length - 1)
                  Divider(
                    height: 3,
                    color: _mutedColor(context).withAlpha(30),
                  ),
              ],
            ),
          ),
        );
      },
      error: (error, stack) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: _ErrorLoadingWidget(
            textColor: _mutedColor(context),
          ),
        );
      },
      loading: () => Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: Center(
          child: CircularProgressIndicator(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
