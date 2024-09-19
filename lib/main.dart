import 'package:amg_flutter_guide/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
          toolbarHeight: 70.0,
          centerTitle: true,
        ),
      ),
      getPages: routesAPI,
    );
  }
}
