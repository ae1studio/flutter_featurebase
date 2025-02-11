part of featurebase;

_FBService _fbService = _FBService();

class _FBService {
  /// Featurebase API
  late _FeaturebaseApi api;

  ///User info
  fb.User? user;

  /// SSO
  late String _ssoTokenUrl;
  late String _ssoAuthToken;

  /// Haptic Feedback Enabled value
  bool isHapticEnabled = true;

  bool hasAuth = false;

  /// Setup the Featurebase API
  void setup(String organizationName, bool hapticEnabled,
      {String? ssoTokenUrl, String? ssoAuthToken}) {
    api = _FeaturebaseApi.from(
      organizationName: organizationName,
    );
    isHapticEnabled = hapticEnabled;

    //Set SSO
    if (ssoTokenUrl != null) {
      _ssoTokenUrl = ssoTokenUrl;
    }
    if (ssoAuthToken != null) {
      _ssoAuthToken = ssoAuthToken;
    }
  }

  /// Setup the SSO Auth
  Future<void> setupAuth() async {
    /// Create a Dio instance
    Dio dio = Dio();
    dio.options.headers['Authorization'] = _ssoAuthToken;

    Response response = await dio.get(_ssoTokenUrl);
    api.setAccessToken(response.data['data']['token']);
    hasAuth = true;
  }
}
