import 'package:flutter/material.dart';
import 'package:twitch_clone_tutorial/screens/login_screen.dart';
import 'package:twitch_clone_tutorial/screens/onboarding_screen.dart';
import 'package:twitch_clone_tutorial/screens/Login_screen.dart';
import 'package:twitch_clone_tutorial/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitch Clone',
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: backgroundColor,
          appBarTheme: AppBarTheme.of(context).copyWith(
              backgroundColor: backgroundColor,
              elevation: 0,
              titleTextStyle: const TextStyle(
                color: primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              iconTheme: const IconThemeData(
                color: primaryColor,
              ))),
      home: const OnboardingScreen(),
      routes: {
        OnboardingScreen.routeName: (context) => const OnboardingScreen(),
        LoginScreen.RouteName: (context) => const LoginScreen(),
        LoginScreen.RouteName: (context) => const LoginScreen(),
      },
    );
  }
}
