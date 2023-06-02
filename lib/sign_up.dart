import 'package:flutter/material.dart';
import 'package:text_feild2/home_page.dart';

class SignUp extends StatefulWidget {
  static const String id = "sign_up";

  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _visibility = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();

  doSignIn() {
    String email = _emailController.text.trim();
    String name = _nameController.text.trim();
    String password = _passwordController.text.trim();
    if (email.isNotEmpty && name.isNotEmpty && password.isNotEmpty) {
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Instagram",
                style: TextStyle(fontSize: 45, fontFamily: "Billabong"),
              ),
              Container(
                height: 48,
                margin: const EdgeInsets.only(top: 15, bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  controller: _nameController,
                  style: const TextStyle(fontSize: 18),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                    hintText: "Name",
                    hintStyle: TextStyle(color: Colors.blue, fontSize: 18),
                  ),
                ),
              ),
              Container(
                height: 48,
                margin: const EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  controller: _emailController,
                  style: const TextStyle(fontSize: 18),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.blue, fontSize: 18),
                  ),
                ),
              ),
              Container(
                height: 48,
                margin: const EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  obscureText: _visibility,
                  controller: _passwordController,
                  style: const TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _visibility = !_visibility;
                        });
                      },
                      icon: _visibility
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off_outlined),
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(10),
                    hintStyle:
                        const TextStyle(color: Colors.blue, fontSize: 18),
                    hintText: "Password",
                  ),
                ),
              ),
              Container(
                height: 48,
                margin: const EdgeInsets.only(bottom: 20, top: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.blue),
                child: TextButton(
                  onPressed: () {
                    doSignIn();
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Do you have an account",
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, HomePage.id);
                    },
                    child: const Text(
                      "Log in",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
