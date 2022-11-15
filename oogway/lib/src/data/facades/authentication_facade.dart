import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/extensions/logger_extension.dart';

class AuthenticationFacade with Logging {
  final FirebaseAuth firebaseAuth;

  AuthenticationFacade({required this.firebaseAuth});

  /// This stream is called once the sign in vs out changes
  Stream<User?> get authStateChanges => firebaseAuth.idTokenChanges();

  Future<UserCredential?> signInAnonymously() async {
    try {
      UserCredential userCredential = await firebaseAuth.signInAnonymously();
      logger.i("User[${userCredential.user?.uid}] anonymously signed in");
      return userCredential;
    } catch (e) {
      return null;
    }
  }

  Future<void> signOut() {
    return firebaseAuth.signOut();
  }
}

final authenticationFacadeProvider = Provider<AuthenticationFacade>((ref) {
  return AuthenticationFacade(
    firebaseAuth: FirebaseAuth.instance,
  );
});

final authStateChangesProvider = StreamProvider<User?>(
  (ref) => ref.watch(authenticationFacadeProvider).authStateChanges,
);
