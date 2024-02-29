import 'package:flutter/material.dart';
import 'features/auth/screens/login_screen.dart';
import 'core/common/theme.dart';

void main() {
  runApp(const MyApp());
}
  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return   MaterialApp(
        debugShowCheckedModeBanner: false,
          theme: textTheme(Brightness.light),
        home:  const LoginScreen(),
      );
    }
  }

