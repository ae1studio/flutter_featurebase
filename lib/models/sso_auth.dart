part of featurebase;

class SSOAuth {
  /// SSO Auth Token (See README.md for more information)
  final String token;

  /// SSO Token URL (See README.md for more information)
  final String tokenUrl;

  SSOAuth({
    required this.token,
    required this.tokenUrl,
  });
}
