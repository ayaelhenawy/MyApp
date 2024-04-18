import 'package:flutter/material.dart';
import 'package:myproject/src/ResetPssword.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  get titleText => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logos/forget.png',
              width: 150,
              height:80,
            ),
            const SizedBox(
              height: 100,
            ),
           const Text('Reset Password',
               //  style: titleText,
              style: TextStyle(fontSize: 30),
            ),
            const  SizedBox(height: 20),
            const  Text(
              'Enter your email address to reset your password',
              style: TextStyle(fontSize: 16),
            ),
        const  SizedBox(height: 20),
          const  TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
          const  SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder:(context)
                {
                  return const ResetPassword();

                }));
              },
              child:  Text('Reset Password'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                minimumSize:const Size.fromHeight(50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
