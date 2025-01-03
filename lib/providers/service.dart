part of featurebase;

_FBService _fbService = _FBService();

class _FBService {
  /// Featurebase API
  late fb.FeaturebaseApi api;

  /// Haptic Feedback Enabled value
  bool isHapticEnabled = true;

  /// Setup the Featurebase API
  void setup(String url, bool hapticEnabled) {
    api = fb.FeaturebaseApi.from(
      baseUrl: url,
    );
    isHapticEnabled = hapticEnabled;
  }
}
