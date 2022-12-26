import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/secure_storage.dart';
import 'package:oogway/src/data/data.dart';
import 'package:oogway/src/models/charity/charity.dart';

final favoriteCharitiesProvider = StreamProvider<List<Charity>>((ref) async* {
  final firestoreDatabase = ref.read(firestoreDatabaseProvider);
  final accountUID =
      await SecureStorage.readSecureData(SecureStorage.accountUid);

  yield* firestoreDatabase.favoritesStream(accountUID!);
});
