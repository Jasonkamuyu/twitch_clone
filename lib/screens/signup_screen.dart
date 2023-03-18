import 'package:flutter/material.dart';
import 'package:twitch_clone_tutorial/widgets/custom_button.dart';
import 'package:twitch_clone_tutorial/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String RouteName = '/Login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _Emailcontroller = TextEditingController();
  final TextEditingController _Usernamecontroller = TextEditingController();
  final TextEditingController _Passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              const Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: CustomTextField(controller: _Emailcontroller),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Username",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: CustomTextField(controller: _Usernamecontroller),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Password",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: CustomTextField(controller: _Passwordcontroller),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(text: "Sign Up", onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
