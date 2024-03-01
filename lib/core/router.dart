import 'package:flutter/material.dart';
import 'package:login_profile_app/features/auth/screens/login_screen.dart';
import 'package:login_profile_app/features/auth/screens/register_screen.dart';
import 'package:routemaster/routemaster.dart';
final routes= RouteMap(
    routes: {
      '/' : (_) => const MaterialPage(child: LoginScreen()),
      '/not_registered': (_) => const MaterialPage(child: RegisterScreen()),
    }
);