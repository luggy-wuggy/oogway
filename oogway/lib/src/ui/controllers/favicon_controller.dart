import 'package:favicon/favicon.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final faviconProvider =
    FutureProvider.family<String?, String>((ref, url) async {
  final iconUrl = await FaviconFinder.getBest(url);

  return iconUrl?.url;
});
