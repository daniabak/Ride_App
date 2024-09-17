import 'package:flutter/material.dart';
import 'package:rideshare_app/core/injection_container.dart' as di;
import 'package:rideshare_app/core/store/getit.dart';
import 'package:rideshare_app/features/bicycle/presentation/pages/category_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  initial();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp.router(
    //   routerConfig: Routes().router,
    //   debugShowCheckedModeBanner: false,
    // );
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoriesScreen(),
    );
  }
}
