import 'package:flutter/material.dart';
import 'package:text_feild2/sign_up.dart';

import 'home_page.dart';

class SignIn extends StatefulWidget {
  static const String id = "sign_in";

  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late bool _visibility = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  doSignIn() {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    if (email.isNotEmpty && password.isNotEmpty) {
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Instagram",
                style: TextStyle(fontFamily: "Billabong", fontSize: 50),
              ),
              Container(
                height: 48,
                margin: const EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.blueAccent),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  controller: _emailController,
                  style: const TextStyle(fontSize: 18),
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.blue, fontSize: 18)),
                ),
              ),
              Container(
                height: 48,
                margin: const EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  obscureText: _visibility,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _visibility = !_visibility;
                        });
                      },
                      icon: _visibility
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                    contentPadding: const EdgeInsets.all(10),
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle:
                        const TextStyle(color: Colors.blue, fontSize: 18),
                  ),
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 15,
                  bottom: 20,
                ),
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  child: const Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    doSignIn();
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, SignUp.id);
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
