import 'package:oogway/src/common/constants/secure_storage.dart';
import 'package:oogway/src/data/facades/firestore_facade.dart';
import 'package:oogway/src/models/charity/charity.dart';
import 'package:riverpod/riverpod.dart';

class FavoriteCharityUseCase {
  FavoriteCharityUseCase({required this.firestoreDatabase});

  OogwayFirestoreDatabase firestoreDatabase;

  Future<void> call(Charity charity) async {
    final accountUID =
        await SecureStorage.readSecureData(SecureStorage.accountUid);
    firestoreDatabase.favoriteCharity(accountUID!, charity);
  }
}

final favoriteCharityUseCaseProvider = Provider<FavoriteCharityUseCase>((ref) {
  return FavoriteCharityUseCase(
    firestoreDatabase: ref.read(firestoreDatabaseProvider),
  );
});
