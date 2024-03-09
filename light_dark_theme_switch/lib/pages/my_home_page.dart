import 'package:flutter/material.dart';
import 'package:light_dark_theme_switch/components/box.dart';
import 'package:light_dark_theme_switch/components/button.dart';
import 'package:light_dark_theme_switch/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Box(
          color: Theme.of(context).colorScheme.primary,
          child: Button(
            color: Theme.of(context).colorScheme.secondary,
            text: 'TAP',
            onTap: () => context.read<ThemeProvider>().toggleTheme(),
            // onTap: () => Provider.of<ThemeProvider>(context, listen: false).toggleTheme(),
          ),
        ),
      ),
    );
  }
}
