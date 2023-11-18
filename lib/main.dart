import 'package:flutter/material.dart';
import 'package:invest_app/screens/welcome.dart';

import 'themes/index.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: const WelcomePage(),
    );
  }
}
