import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDataSource {
  Future<void> storeToken(String accessToken, String refreshToken);
  Future<void> storeUserData(String userId, String userRole);
  Future<void> storeChildId(String childId);
  Future<String?> getChildId();
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<String?> getUserId();
  Future<String?> getUserRole();
  Future<void> clearData();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences sharedPreferences;

  AuthLocalDataSourceImpl({required this.sharedPreferences});

  static const _userId = 'user_id';
  static const _childId = 'child_id';
  static const _accessTokenKey = 'access_token';
  static const _refreshTokenKey = 'refresh_token';
  static const _userRoleKey = 'user_role';

  @override
  Future<void> storeToken(String accessToken, String refreshToken) async {
    await sharedPreferences.setString(_accessTokenKey, accessToken);
    await sharedPreferences.setString(_refreshTokenKey, refreshToken);
  }

  @override
  Future<void> storeUserData(String userId, String userRole) async {
    await sharedPreferences.setString(_userId, userId);
    await sharedPreferences.setString(_userRoleKey, userRole);
  }

  @override
  Future<void> storeChildId(String childId) async {
    await sharedPreferences.setString(_childId, childId);
  }

  @override
  Future<String?> getAccessToken() async {
    return sharedPreferences.getString(_accessTokenKey);
  }

  @override
  Future<String?> getRefreshToken() async {
    return sharedPreferences.getString(_refreshTokenKey);
  }

  @override
  Future<String?> getUserId() async {
    return sharedPreferences.getString(_userId);
  }

  @override
  Future<String?> getUserRole() async {
    return sharedPreferences.getString(_userRoleKey);
  }

  @override
  Future<String?> getChildId() async {
    return sharedPreferences.getString(_childId);
  }

  @override
  Future<void> clearData() async {
    await sharedPreferences.remove(_userId);
    await sharedPreferences.remove(_childId);
    await sharedPreferences.remove(_accessTokenKey);
    await sharedPreferences.remove(_refreshTokenKey);
    await sharedPreferences.remove(_userRoleKey);
  }
}
