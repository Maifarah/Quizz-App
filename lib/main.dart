import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quize_app/views/home_view.dart';
import 'package:quize_app/views/question1_view.dart';
import 'package:quize_app/views/question2_view.dart';
import 'package:quize_app/views/question3_view.dart';
import 'package:quize_app/views/question4_view.dart';

void main() {
  runApp(QuizeApp());
}

class QuizeApp extends StatelessWidget {
  QuizeApp({super.key});
  final GoRouter _route = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/question1View',
        builder: (context, stat) => Question1View(),
      ),
      GoRoute(
        path: '/question2View',
        builder: (context, stat) => Question2View(),
      ),
      GoRoute(
        path: '/question3View',
        builder: (context, stat) => Question3View(),
      ),
      GoRoute(
        path: '/question4View',
        builder: (context, stat) => Question4View(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _route,
    );
  }
}
