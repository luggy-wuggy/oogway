import 'package:oogway/src/app_router.dart';
import 'package:oogway/src/common/constants/secure_storage.dart';
import 'package:oogway/src/data/data.dart';
import 'package:riverpod/riverpod.dart';

class SignOutUseCase {
  SignOutUseCase({required this.ref});

//final Reader read;
  final Ref ref;

  late final AuthenticationFacade auth = ref.read(authenticationFacadeProvider);
  late final OogwayRouter router = ref.read(oogwayRouterProvider);

  Future<void> call() async {
    await SecureStorage.deleteAllSecureData();
    await auth.signOut();
    await router.logout();
  }
}

final signOutUseCaseProvider = Provider<SignOutUseCase>((ref) {
  return SignOutUseCase(
    ref: ref,
  );
});
