import 'package:oogway/src/app_router.dart';
import 'package:oogway/src/data/data.dart';
import 'package:oogway/src/models/user.dart';
import 'package:riverpod/riverpod.dart';

class SignInUseCase {
  SignInUseCase(
      {required this.database, required this.router, required this.auth});

  final AuthenticationFacade auth;
  final OogwayRouter router;
  final OogwayFirestoreDatabase database;

  Future<void> call(OogwayUser user) async {
    final fbUser = await auth.signInAnonymously();
    user.id = fbUser?.user?.uid;
    user.date = DateTime.now();

    await database.createNewUser(user);
    await router.login();
  }
}

final signInUseCaseProvider = Provider<SignInUseCase>((ref) {
  return SignInUseCase(
    auth: ref.read(authenticationFacadeProvider),
    router: ref.read(oogwayRouterProvider),
    database: ref.read(firestoreDatabaseProvider),
  );
});
