import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';

import 'pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage("assets/images/icon_full_small.png"), context);
    return DynamicColorBuilder(builder: (lightColorScheme, darkColorScheme) {
      return MaterialApp(
        title: 'Flutter Detector',
        theme: ThemeData(
          colorScheme: lightColorScheme ?? const ColorScheme.light(),
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          colorScheme: darkColorScheme ?? const ColorScheme.dark(),
          useMaterial3: true,
        ),
        themeMode: ThemeMode.system,
        home: const MainPage(),
      );
    });
  }
}
