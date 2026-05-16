import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'features/app_shell/pages/main_shell_page.dart';

void main() {
  runApp(const PosFoodApp());
}

class PosFoodApp extends StatelessWidget {
  const PosFoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'POS Food',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const MainShellPage(),
    );
  }
}