import 'package:oogway/src/app_router.dart';
import 'package:oogway/src/data/facades/authentication_facade.dart';
import 'package:riverpod/riverpod.dart';

class SignInUseCase {
  SignInUseCase({required this.router, required this.auth});

  final AuthenticationFacade auth;
  final OogwayRouter router;

  Future<void> call() async {
    final user = await auth.signInAnonymously();
    await router.login();
  }
}

final signInUseCaseProvider = Provider<SignInUseCase>((ref) {
  return SignInUseCase(
    auth: ref.read(authenticationFacadeProvider),
    router: ref.read(oogwayRouterProvider),
  );
});
