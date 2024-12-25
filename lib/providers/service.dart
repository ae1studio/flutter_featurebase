part of featurebase;

_FBSerivce _fbSerivce = _FBSerivce();

class _FBSerivce {
  late fb.FeaturebaseApi api;

  void setup(String url) {
    api = fb.FeaturebaseApi.from(
      baseUrl: url,
    );
  }
}
