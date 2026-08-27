import 'package:deecalm/features/auth/presentation/screens/auth_entry_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const String home = 'home';
  static const String authEntry = 'auth-entry';
  static const String authEmail = 'auth-email';
  static const String authPassword = 'auth-password';
}

final GoRouter router = GoRouter(
  initialLocation: '/auth',
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.home,
      builder: (context, state) => const Scaffold(
        body: Text('Home'),
      ),
    ),

    GoRoute(
      path: '/auth',
      name: AppRoutes.authEntry,
      builder: (context, state) => const AuthEntryScreen(),
      routes: <RouteBase>[
        GoRoute(
          path: 'email',
          name: AppRoutes.authEmail,
          builder: (context, state) => const Scaffold(
            body: Text('Email Entry'),
          ),
        ),
        GoRoute(
          path: 'password',
          name: AppRoutes.authPassword,
          builder: (context, state) => const Scaffold(
            body: Text('Password Entry'),
          ),
        ),
      ],
    ),
  ],
);
