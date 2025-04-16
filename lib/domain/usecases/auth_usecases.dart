import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../../data/datasources/local/auth_local_datasource.dart';

class AuthUseCase {
  final AuthLocalDataSource authLocalDataSource;

  AuthUseCase(this.authLocalDataSource);

  Future<Either<Failure, bool>> isAuthenticated() async {
    try {
      final token = await authLocalDataSource.getAccessToken();
      return right(token != null && token.isNotEmpty);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  // Get the stored access token
  Future<Either<Failure, String>> getAccessToken() async {
    try {
      final token = await authLocalDataSource.getAccessToken();
      if (token != null && token.isNotEmpty) {
        return right(token);
      } else {
        return left(Failure("Token is null or empty"));
      }
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
