import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

import '../parts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
final _emailController = TextEditingController();
final _passwordController = TextEditingController();
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 35, top: 70),
            width: double.infinity,
            height: 260,
            color: const Color(0xFF21464a),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Parts().circleAvatar(),
                const SizedBox(
                  height: 20,
                ),
                Parts().welcoming(),
                const SizedBox(
                  height: 8,
                ),
                Parts().signInText(),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: const Color(0xFF21464a),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.only(left: 35, top: 70, right: 30),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Parts().emailpassText('Email'),
                    const SizedBox(height: 8,),
                    Parts().reusableTextField(_emailController, 'Enter Email'),
                    const SizedBox(height: 40,),
                    Parts().emailpassText('Password'),
                    const SizedBox(height: 8,),
                    Parts().reusableTextField(_passwordController, 'Enter Password'),
                    const SizedBox(height: 30,),
                    Parts().forget(),
                    const SizedBox(height: 30,),
                    Parts().customButton('Sign In'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
