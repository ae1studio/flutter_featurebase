part of featurebase;

@riverpod
Future<fb.User> getCurrentUser(Ref ref) async {
  //If not authenticated, authenticate
  if (!_fbService.api.isTokenSet()) {
    await _fbService.setupAuth();
  }

  _fbService.user = await _fbService.api.user.get();

  return _fbService.user!;
}
