import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../entities/auth_entities.dart';
import '../repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository _repository;

  LoginUseCase(this._repository);

  Future<Either<Failure, AuthEntities>> execute({
    required String email,
    required String password,
  }) async {
    try {
      return await _repository.login(email, password);
    } catch (error) {
      return left(Failure("An unexpected error occurred: $error"));
    }
  }
}
