import 'package:flutter/material.dart';
import 'package:widget_apps/config/theme/app_theme.dart';
import 'package:widget_apps/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).theme(),
    );
  }
}