import 'package:flutter/material.dart';
import 'package:light_dark_theme_switch/theme/theme_provider.dart';
import 'package:provider/provider.dart';

import 'pages/my_home_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: context.watch<ThemeProvider>().themeData,
      // theme: Provider.of<ThemeProvider>(context).themeData,
      home: const MyHomePage(),
    );
  }
}
