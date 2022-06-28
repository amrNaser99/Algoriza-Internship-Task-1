import 'package:algoriza_task1/Registeration/login_screen.dart';
import 'package:algoriza_task1/Registeration/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Algoriza internship task1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle:
              SystemUiOverlayStyle(
                statusBarColor: Colors.white,
                  statusBarBrightness: Brightness.dark,
                statusBarIconBrightness: Brightness.dark,
              ),
          elevation: 0
        ),
      ),
      home: const LoginScreen(),
      // OnBoardingScreen(),
    );
  }
}
