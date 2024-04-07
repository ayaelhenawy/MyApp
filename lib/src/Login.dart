import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
    // this logo
              Image.asset('assets/images/logo.png',
              width: 150,
              height:150,
              ),
            const  SizedBox(height: 20),
              const Text('Welcome to my app!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 70),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: const Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
             const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: const Icon(Icons.password_outlined),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              MaterialButton(
                elevation: 5.0,
                  color: Colors.blue,
                  padding:const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                  onPressed: () {},
                  child:const Text('Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            const SizedBox(height: 20),
             GestureDetector(
               onTap: () {
                 print('Forget Your Password?');
               },
                child: const Text('Forget Password?',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                )),
              ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: (){
              print('Sign Up');
            },
            child: const Text('Sign Up',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                )),
          ),
            ],
          ),
        ),
      ),
    );
  }
}
