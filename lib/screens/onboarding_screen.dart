import 'package:flutter/material.dart';
import 'package:twitch_clone_tutorial/screens/login_screen.dart';
import 'package:twitch_clone_tutorial/screens/Login_screen.dart';
import 'package:twitch_clone_tutorial/widgets/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  static const routeName = '/onboarding';
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome To \n Twitch",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: CustomButton(
                  text: "Login",
                  onTap: () {
                    Navigator.pushNamed(context, LoginScreen.RouteName);
                  }),
            ),
            CustomButton(
                text: "Sign Up",
                onTap: () {
                  Navigator.pushNamed(context, LoginScreen.RouteName);
                }),
          ],
        ),
      ),
    );
  }
}
