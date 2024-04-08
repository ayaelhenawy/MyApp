import 'package:flutter/material.dart';

import 'OTPValid.dart';
class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration:const BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/reset.png',
                width: 150,
                height:100,
              ),
             const Text(
                'Reset your password',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
             const SizedBox(height: 20),
            const  Text(
                'We have sent a four digit code on your phone/email',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
             const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'New Password ',
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
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm New Password ',
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
              const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder:(context)
              {
                return const OTPValid();

              }));
            },
            child: Text('Confirm'),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              minimumSize: Size.fromHeight(50),
            ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}