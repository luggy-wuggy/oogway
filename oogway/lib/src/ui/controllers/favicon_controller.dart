import 'package:favicon/favicon.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final faviconProvider =
    FutureProvider.family<String?, String>((ref, url) async {
  if (url.isEmpty) {
    return null;
  }

  final validSchemes = ['http://', 'https://'];
  final cleanedUrl = validSchemes.any((scheme) => url.startsWith(scheme))
      ? url
      : 'http://$url';

  try {
    final iconUrl = await FaviconFinder.getBest(cleanedUrl);
    return iconUrl?.url;
  } catch (err) {
    return null;
  }
});
