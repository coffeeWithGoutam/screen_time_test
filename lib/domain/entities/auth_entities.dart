class AuthEntities {
  final String userId;
  final String accessToken;
  final String refreshToken;
  final String message;
  final String userRole;

  AuthEntities({
    required this.userId,
    required this.accessToken,
    required this.refreshToken,
    required this.message,
    required this.userRole,
  });
}
