import '../../models/response/child_profile/child_profile_response.dart';
import '../../../core/constants/api_constants.dart';
import '../../../core/errors/failure.dart';
import '../../models/response/children_device/children_device_response.dart';
import '../../models/response/common/message_response.dart';
import '../../services/api_service.dart';
import '../local/auth_local_datasource.dart';

abstract class ParentHomeRemoteDatasource {
  Future<List<DeviceDataDTO>> getDevices();
  Future<ChildProfileResponseDTO> getChildProfile();
  Future<MessageResponseDTO> toggleChildDeviceLock(String id);
}

class ParentHomeRemoteDatasourceImpl implements ParentHomeRemoteDatasource {
  final ApiService _apiService;
  final AuthLocalDataSource _authLocalDataSource;

  ParentHomeRemoteDatasourceImpl(this._apiService, this._authLocalDataSource);

  @override
  Future<List<DeviceDataDTO>> getDevices() async {
    try {
      final token = await _authLocalDataSource.getAccessToken();
      if (token == null || token.isEmpty) {
        throw Failure("Token not found");
      }
      final response = await _apiService.getRequest(
        endPoint: ApiConstants.fetchChildrenDevice,
        token: token,
      );
      final deviceResponse = ChildrenDeviceResponseDTO.fromJson(response.data);
      return deviceResponse.data ?? [];
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ChildProfileResponseDTO> getChildProfile() async {
    try {
      final token = await _authLocalDataSource.getAccessToken();
      final childId = await _authLocalDataSource.getChildId();
      if (token == null || token.isEmpty) {
        throw Failure("Token not found");
      }
      final response = await _apiService.getRequest(
        endPoint: "${ApiConstants.fetchChildProfile}/$childId",
        token: token,
      );
      return ChildProfileResponseDTO.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<MessageResponseDTO> toggleChildDeviceLock(String id) async {
    try {
      final token = await _authLocalDataSource.getAccessToken();
      if (token == null || token.isEmpty) {
        throw Failure("Token not found");
      }
      final response = await _apiService.patchRequest(
        endPoint: "${ApiConstants.toggleLockDevice}/$id",
        token: token,
      );
      return MessageResponseDTO.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
