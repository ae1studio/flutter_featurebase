part of featurebase;

_FBService _fbService = _FBService();

class _FBService {
  late fb.FeaturebaseApi api;

  bool isHapticEnabled = false;

  void setup(String url, bool isHapticEnabled) {
    api = fb.FeaturebaseApi.from(
      baseUrl: url,
    );
    isHapticEnabled = isHapticEnabled;
  }
}
