class ApiConstants {
  ApiConstants._();

  // All Endpoints
  static const baseUrl = "https://api.parensight.com/api/v1";
  static const login = "$baseUrl/user/login";
  static const fetchChildrenDevice = "$baseUrl/user/get-children-devices";
  static const toggleLockDevice = "$baseUrl/user/toggle-child-lock";
  static const fetchChildProfile = "$baseUrl/user/get-child-profile";
}
