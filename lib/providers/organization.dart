part of featurebase;

@riverpod
Future<fb.Organization> getOrganization(Ref ref) async {
  return _fbService.api.organization.get();
}
