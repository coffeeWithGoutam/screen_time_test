import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../entities/profile_entities.dart';
import '../repositories/parent_home_repository.dart';

class FetchProfileUsecases {
  final ParentHomeRepository _parentHomeRepository;

  FetchProfileUsecases(this._parentHomeRepository);

  Future<Either<Failure, ProfileEntities>> fetchProfile() async {
    try {
      return await _parentHomeRepository.fetchProfile();
    } catch (error) {
      return left(Failure("An unexpected error occurred"));
    }
  }
}
