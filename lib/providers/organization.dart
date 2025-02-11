part of featurebase;

@riverpod
Future<fb.Organization> getOrganization(Ref ref) async {
  return _fbService.api.organization.get();
}

@riverpod
Future<List<fb.UserActivity>> getUserActivities(Ref ref, String id) async {
  return _fbService.api.organization.userActivities(id);
}
