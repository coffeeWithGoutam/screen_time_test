import '../../config/routes.dart';
import '../../domain/usecases/auth_usecases.dart';

class SplashService {
  final AuthUseCase authUseCase;

  SplashService(this.authUseCase);

  Future<String> getNextRoute() async {
    final isLoggedInResult = await authUseCase.isAuthenticated();
    return isLoggedInResult.fold(
      (failure) => Routes.kLogin,
      (isLoggedIn) => isLoggedIn ? Routes.kHome : Routes.kLogin,
    );
  }
}
