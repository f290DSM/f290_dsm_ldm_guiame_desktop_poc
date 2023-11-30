import 'dart:io';

import 'package:f290_dsm_ldm_guiame_desktop_poc/ui/menus.dart';
import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await DesktopWindow.setMaxWindowSize(Size.infinite);
    await DesktopWindow.setMinWindowSize(const Size(700, 500));
    await DesktopWindow.setWindowSize(const Size(700, 500));
  }
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
    if (Platform.isWindows) {
      ref.read(menuProvider).createWindowsMenu();
    }
  }

  @override
  Widget build(BuildContext context) {
    return PlatformMenuBar(
      menus: ref.read(menuProvider).createMenus(),
      child: MaterialApp(
        navigatorKey: navigatorKey,
        showSemanticsDebugger: false,
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.deepOrange,
        ),
        home: const Placeholder(),
      ),
    );
  }
}
