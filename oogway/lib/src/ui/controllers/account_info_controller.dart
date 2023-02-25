import 'package:oogway/src/common/constants/secure_storage.dart';
import 'package:oogway/src/data/data.dart';
import 'package:oogway/src/models/charity/charity.dart';
import 'package:oogway/src/models/user.dart';
import 'package:riverpod/riverpod.dart';

/// One option to populate account info
/// 1. Fetching from Firestore from the AccountId stored in Secure Storage

class AccountInfoNotifier extends StateNotifier<AsyncValue<OogwayUser>> {
  AccountInfoNotifier({required this.ref}) : super(const AsyncValue.loading()) {
    _fetch();
  }

  final Ref ref;

  Future _fetch() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final uuid = await SecureStorage.readSecureData(SecureStorage.accountUid);
      final user = await ref.read(firestoreDatabaseProvider).getUser(uuid!);

      return user;
    });
  }

  void favoriteCharity(Charity charity) {
    final newState = state;
    newState.value?.favorites.add(charity);
    state = newState;
  }

  void removeCharity(Charity charity) {
    final newState = state;
    newState.value?.favorites.remove(charity);
    state = newState;
  }
}

final accountInfoProvider = StateNotifierProvider.autoDispose<
    AccountInfoNotifier, AsyncValue<OogwayUser>>((ref) {
  return AccountInfoNotifier(ref: ref);
});
