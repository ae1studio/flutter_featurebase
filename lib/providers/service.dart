part of featurebase;

_FBSerivce _fbSerivce = _FBSerivce();

class _FBSerivce {
  late fb.FeaturebaseApi api;

  bool isHapticEnabled = false;

  void setup(String url, bool isHapticEnabled) {
    api = fb.FeaturebaseApi.from(
      baseUrl: url,
    );
    isHapticEnabled = isHapticEnabled;
  }
}
