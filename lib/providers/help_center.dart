part of featurebase;

@riverpod
Future<fb.HelpCenter> helpCenterInfo(Ref ref) async {
  return _fbSerivce.api.helpCenter.get();
}
