import 'package:oogway/src/common/constants/secure_storage.dart';
import 'package:oogway/src/data/facades/firestore_facade.dart';
import 'package:oogway/src/models/charity/charity.dart';
import 'package:riverpod/riverpod.dart';

class RemoveFavoritedCharityUseCase {
  RemoveFavoritedCharityUseCase({required this.firestoreDatabase});

  OogwayFirestoreDatabase firestoreDatabase;

  Future<void> call(Charity charity) async {
    final accountUID =
        await SecureStorage.readSecureData(SecureStorage.accountUid);
    firestoreDatabase.removeFavorite(accountUID!, charity);
  }
}

final removeFavoritedCharityUseCaseProvider =
    Provider<RemoveFavoritedCharityUseCase>((ref) {
  return RemoveFavoritedCharityUseCase(
    firestoreDatabase: ref.read(firestoreDatabaseProvider),
  );
});
