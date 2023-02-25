import 'package:oogway/src/common/constants/secure_storage.dart';
import 'package:oogway/src/data/facades/firestore_facade.dart';
import 'package:oogway/src/models/charity/charity.dart';
import 'package:oogway/src/ui/controllers/account_info_controller.dart';
import 'package:riverpod/riverpod.dart';

class FavoriteCharityUseCase {
  FavoriteCharityUseCase({
    required this.firestoreDatabase,
    required this.account,
  });

  OogwayFirestoreDatabase firestoreDatabase;
  AccountInfoNotifier account;

  Future<void> call(Charity charity) async {
    final accountUID =
        await SecureStorage.readSecureData(SecureStorage.accountUid);
    await firestoreDatabase.favoriteCharity(accountUID!, charity);
    account.favoriteCharity(charity);
  }
}

final favoriteCharityUseCaseProvider =
    Provider.autoDispose<FavoriteCharityUseCase>((ref) {
  final account = ref.watch(accountInfoProvider.notifier);

  return FavoriteCharityUseCase(
    firestoreDatabase: ref.read(firestoreDatabaseProvider),
    account: account,
  );
});
