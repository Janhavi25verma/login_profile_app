import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'core/router.dart';
import 'features/auth/screens/login_screen.dart';
import 'core/common/theme.dart';

void main() {
  runApp(const MyApp());
}
  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return   MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: RoutemasterDelegate(routesBuilder: (_) => routes),
        routeInformationParser: const RoutemasterParser(),
          theme: textTheme(Brightness.light),
      );
    }
  }

