import 'package:oogway/src/app_router.dart';
import 'package:oogway/src/data/data.dart';
import 'package:oogway/src/models/place.dart';
import 'package:oogway/src/models/user.dart';
import 'package:riverpod/riverpod.dart';

class SignInUseCase {
  SignInUseCase(
      {required this.database, required this.router, required this.auth});

  final AuthenticationFacade auth;
  final OogwayRouter router;
  final OogwayFirestoreDatabase database;

  Future<void> call() async {
    final user = await auth.signInAnonymously();
    await database.createNewUser(
      OogwayUser(
        id: user?.user?.uid,
        date: DateTime.now(),
        place: Place(),
      ),
    );
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
