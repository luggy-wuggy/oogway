import 'package:oogway/src/app_router.dart';
import 'package:oogway/src/common/constants/secure_storage.dart';
import 'package:oogway/src/data/data.dart';
import 'package:riverpod/riverpod.dart';

class SignOutUseCase {
  SignOutUseCase({required this.router, required this.auth});

  final AuthenticationFacade auth;
  final OogwayRouter router;

  Future<void> call() async {
    await SecureStorage.deleteAllSecureData();
    await auth.signOut();
    await router.logout();
  }
}

final signOutUseCaseProvider = Provider<SignOutUseCase>((ref) {
  return SignOutUseCase(
    auth: ref.read(authenticationFacadeProvider),
    router: ref.read(oogwayRouterProvider),
  );
});
