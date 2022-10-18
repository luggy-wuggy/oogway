import 'package:oogway/src/common/constants/secure_storage.dart';
import 'package:oogway/src/data/data.dart';
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
}

final accountInfoProvider = StateNotifierProvider.autoDispose<
    AccountInfoNotifier, AsyncValue<OogwayUser>>((ref) {
  return AccountInfoNotifier(ref: ref);
});
