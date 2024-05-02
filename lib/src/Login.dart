// ignore_for_file: file_names, unused_element

import 'package:flutter/material.dart';
import 'package:myproject/src/forgetpassword.dart';
import 'package:myproject/src/signup.dart';

import 'dashboard/view/page/dashboard_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _emailErrorText;
  String? _passwordErrorText;

  void _validateFields() {
    setState(() {
      _emailErrorText =
          _emailController.text.isEmpty ? 'Please enter your email' : null;

      _passwordErrorText = _passwordController.text.isEmpty
          ? 'Please enter your password'
          : _passwordController.text.length < 8
              ? 'Password must be at least 8 characters'
              : null;
    });

    if (_emailErrorText == null && _passwordErrorText == null) {
      // Both fields are valid, proceed with login
      // You can add your login logic here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 70,
        ),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Logo
              Image.asset(
                'assets/logos/logo.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 20),
              const Text(
                'Welcome to my app!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 70),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  errorText: _emailErrorText,
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        const BorderSide(color: Colors.blue, width: 1.0),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  errorText: _passwordErrorText,
                  prefixIcon: const Icon(Icons.password_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        const BorderSide(color: Colors.blue, width: 1.0),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              MaterialButton(
                elevation: 5.0,
                color: Colors.blue,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const DashboardPage();
                  }));
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const ForgetPassword();
                  }));
                },
                child: const Text(
                  'Forget Password?',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const SignUp();
                  }));
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
