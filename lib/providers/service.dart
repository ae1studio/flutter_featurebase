part of featurebase;

_FBService _fbService = _FBService();

class _FBService {
  /// Featurebase API
  late _FeaturebaseApi api;

  /// Haptic Feedback Enabled value
  bool isHapticEnabled = true;

  bool hasAuth = false;

  /// Setup the Featurebase API
  void setup(String organizationName, bool hapticEnabled) {
    api = _FeaturebaseApi.from(
      organizationName: organizationName,
    );
    isHapticEnabled = hapticEnabled;
  }

  /// Setup the SSO Auth
  Future<void> setupAuth(String ssoTokenUrl, String ssoAuthToken) async {
    /// Create a Dio instance
    Dio dio = Dio();
    dio.options.headers['Authorization'] = ssoAuthToken;

    Response response = await dio.get(ssoTokenUrl);
    api.setAccessToken(response.data['data']['token']);
    hasAuth = true;
  }
}
