import 'package:flutter/material.dart';
import 'package:login_profile_app/core/common/phone_textfield.dart';
import 'package:routemaster/routemaster.dart';
import '../../../core/common/button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  void navigateTONotRegistered(BuildContext context) {
    Routemaster.of(context).push('/not_registered');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                const Text(
                  "Login",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40,
                ),
                const PhoneTextField(),
                const SizedBox(
                  height: 25,
                ),
                 Button( text: "login", onPressed: (){},),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Not registered?"),
                    GestureDetector(
                      onTap: () => navigateTONotRegistered(context),
                      child: const Text(
                        "Register",
                        style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
