import '../../services/api_service.dart';
import '../../../core/constants/api_constants.dart';
import '../../models/request/login/login_request.dart';
import '../../models/response/login/login_response.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponseDTO> login(
    String email,
    String password,
    String? deviceName,
    String? fcmToken,
  );
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiService apiService;
  AuthRemoteDataSourceImpl({required this.apiService});

  @override
  Future<LoginResponseDTO> login(
    String email,
    String password,
    String? deviceName,
    String? token,
  ) async {
    final request = LoginRequestDTO(
      email: email,
      password: password,
      deviceName: deviceName,
      token: token,
    );
    try {
      final response = await apiService.postRequest(
        endPoint: ApiConstants.login,
        parameters: request.toJson(),
      );
      return LoginResponseDTO.fromJson(response.data);
    } catch (error) {
      rethrow;
    }
  }
}
