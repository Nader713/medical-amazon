import 'package:amazon/view/provider%20mind.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:amazon/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'controller/controller_amazon.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final controller = Get.put(Amazoncontrol());
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) {
          return Check();
        },
        child: GetMaterialApp(
          theme: ThemeData(
              primaryColor: const Color(0xff1b2c3b),
              appBarTheme: const AppBarTheme(
                color: Color(0xff1b2c3b),
              )),
          debugShowCheckedModeBanner: false,
          home: const loginScreen(),
        ));
  }
}
