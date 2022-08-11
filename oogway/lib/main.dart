import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:oogway/src/app_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await dotenv.load(fileName: ".env");

  final supabaseUrl = dotenv.env['SUPABASE_BASE_URL'];
  final supabaseKey = dotenv.env['SUPABASE_BASE_KEY'];

  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);

  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GoRouter router = ref.watch(oogwayRouterProvider).router;

    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
