import 'package:oogway/src/common/constants/secure_storage.dart';
import 'package:oogway/src/data/facades/firestore_facade.dart';
import 'package:oogway/src/models/charity/charity.dart';
import 'package:oogway/src/ui/controllers/account_info_controller.dart';
import 'package:riverpod/riverpod.dart';

class RemoveFavoritedCharityUseCase {
  RemoveFavoritedCharityUseCase({
    required this.firestoreDatabase,
    required this.account,
  });

  OogwayFirestoreDatabase firestoreDatabase;
  AccountInfoNotifier account;

  Future<void> call(Charity charity) async {
    final accountUID =
        await SecureStorage.readSecureData(SecureStorage.accountUid);
    await firestoreDatabase.removeFavorite(accountUID!, charity);
    account.removeCharity(charity);
  }
}

final removeFavoritedCharityUseCaseProvider =
    Provider.autoDispose<RemoveFavoritedCharityUseCase>((ref) {
  final account = ref.watch(accountInfoProvider.notifier);

  return RemoveFavoritedCharityUseCase(
    firestoreDatabase: ref.read(firestoreDatabaseProvider),
    account: account,
  );
});
