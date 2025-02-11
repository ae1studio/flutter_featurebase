part of featurebase;

class _PostPopup extends ConsumerStatefulWidget {
  final fb.Organization organization;
  const _PostPopup({
    // ignore: unused_element
    super.key,
    required this.organization,
  });

  @override
  ConsumerState<_PostPopup> createState() => _PostPopupState();
}

class _PostPopupState extends ConsumerState<_PostPopup> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  late fb.PostCategory selectedCategory;

  final _postFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    selectedCategory = widget.organization.postCategories.first;
    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void submitPost() async {
    //TODO: Throw error
    if (_fbService.user == null) {
      return;
    }

    //TODO: Add error catch
    fb.Post post = await _fbService.api.feedback.submit(
      title: _titleController.text,
      content: _descriptionController.text.trim().isNotEmpty
          ? '<p>${_descriptionController.text}</p>'
          : '',
      categoryId: selectedCategory.id,
      authorId: _fbService.user!.id,
    );

    ref.read(feedbackSubmissionsListProvider.notifier).addPost(post);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _postFormKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 15,
              right: 5,
              top: 12,
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .color!
                          .withOpacity(0.1),
                      width: 1,
                    ),
                  ),
                  child: DropdownButton<fb.PostCategory>(
                    value: selectedCategory,
                    items: widget.organization.postCategories
                        .map(
                          (e) => DropdownMenuItem<fb.PostCategory>(
                            value: e,
                            child: Row(
                              children: [
                                Text(
                                  e.category,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: _mutedColor(context),
                                      ),
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) async {
                      selectedCategory = value!;
                      setState(() {});
                    },
                    isDense: true,
                    padding: EdgeInsets.zero,
                    underline: const SizedBox(),
                    dropdownColor: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    _callHaptic();
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close_rounded),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _titleController,
            decoration: InputDecoration(
              hintText: 'Title of your post',
              hintStyle: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: _mutedColor(context),
                  ),
              border: InputBorder.none,
              errorStyle: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
              fillColor: Theme.of(context).cardColor,
            ),
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
            maxLines: 1,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a title for your post';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _descriptionController,
            decoration: InputDecoration(
              hintText: 'Post description...',
              hintStyle: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: _mutedColor(context),
                  ),
              border: InputBorder.none,
              fillColor: Theme.of(context).cardColor,
              errorStyle: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
            ),
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
            maxLines: null,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Divider(
              height: 10,
              color: Theme.of(context).dividerColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Row(
              children: [
                const Spacer(),
                MaterialButton(
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  onPressed: () {
                    _callHaptic();

                    if (_postFormKey.currentState!.validate()) {
                      submitPost();
                    }
                  },
                  child: Text(
                    'Submit post',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: _calculateTextColor(
                              Theme.of(context).primaryColor),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
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
