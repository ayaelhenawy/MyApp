import 'package:flutter/material.dart';
import 'package:myproject/src/Login.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sign Up'),
        ),
        body: MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  MyFormState createState() {
    return MyFormState();
  }
}

class MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  late String _email, _name, _password;
  late bool _isFb, _isGoogle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const  SizedBox(height: 20),
          const Row(
            children: <Widget>[
              Text('Create New Account'),
            ],
          ),
          const  SizedBox(height: 40),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter an email';
              }
              return null;
            },
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
            onSaved: (value) => _email = value!,
           // decoration:const InputDecoration(
            //  labelText: 'Email',
           // ),
          ),
          const  SizedBox(height: 40),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter a name';
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: 'Name',
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
            onSaved: (value) => _name = value!,
           // decoration:const  InputDecoration(
           //   labelText: 'Name',
           // ),
          ),
          const  SizedBox(height: 40),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter a password';
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: 'Password',
              prefixIcon: const Icon(Icons.password),
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
            onSaved: (value) => _password = value!,
           // decoration: const InputDecoration(
           //   labelText: 'Password',
          //  ),
            obscureText: true,
          ),
          const  SizedBox(height: 40),
          MaterialButton(
              elevation: 5.0,
              color: Colors.blue,
              padding:const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder:(context)
                {
                  return const LoginScreen();

                }));
              },
              child:  const Text('Reset',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),),
          const  SizedBox(height: 20),
      const  Center(
            child: Text(
              'Already have an account?',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const  SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder:(context)
              {
                return const LoginScreen();

              }));
            },
            child: const Text('Log in'),
          ),
        ],
      ),
    );
  }
}
