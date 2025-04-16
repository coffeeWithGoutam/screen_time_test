import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../repositories/parent_home_repository.dart';

class ToggleChildDeviceLockUsecases {
  final ParentHomeRepository _parentHomeRepository;

  ToggleChildDeviceLockUsecases(this._parentHomeRepository);

  Future<Either<Failure, String>> lockChildDevice(String id) async {
    try {
      return await _parentHomeRepository.toggleChildLock(id);
    } catch (error) {
      return left(Failure("An unexpected error occurred"));
    }
  }
}
