import 'package:flutter/material.dart';

import '../../../core/common/button.dart';
import '../../../core/common/phone_textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              const Text(
                "Register",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "A verification code will be sent to your phone number",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.grey,height:1),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 25,
              ),
              const PhoneTextField(),
              const SizedBox(
                height: 25,
              ),
              Button( text: "Verify", onPressed: (){},),
            ],
          ),
        ),
      ),
    );
  }
}
