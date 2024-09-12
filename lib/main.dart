import 'package:flutter/material.dart';
import 'package:rideshare_app/core/go_router.dart/go_router.dart';
import 'package:rideshare_app/core/store/getit.dart';

void main() {
  initial();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routes().router,
      debugShowCheckedModeBanner: false,
    );
  }
}
