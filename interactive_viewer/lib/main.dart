import 'package:flutter/material.dart';
import 'screen/home_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const InteractiveViewerDemo());
}

class InteractiveViewerDemo extends StatelessWidget {
  const InteractiveViewerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Interactive Viewer Demo",
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}