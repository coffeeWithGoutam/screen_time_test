import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../entities/device_entities.dart';
import '../repositories/parent_home_repository.dart';

class FetchDevicesUsecases {
  final ParentHomeRepository _parentHomeRepository;

  FetchDevicesUsecases(this._parentHomeRepository);

  Future<Either<Failure, List<DeviceEntities>>> fetchDevices() async {
    try {
      return await _parentHomeRepository.fetchDevices();
    } catch (error) {
      return left(Failure("An unexpected error occurred"));
    }
  }
}
