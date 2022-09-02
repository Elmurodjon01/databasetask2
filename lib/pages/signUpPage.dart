import 'package:databasetask2/model/account.dart';
import 'package:flutter/material.dart';

import '../database_service/DBServices.dart';
import '../parts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

final accountEmailController = TextEditingController();
final accountNumberController = TextEditingController();
final accountAdressController = TextEditingController();

class _SignUpPageState extends State<SignUpPage> {
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
                const SizedBox(
                  height: 50,
                ),
                Parts().welcoming(),
                const SizedBox(
                  height: 8,
                ),
                Parts().signInText('Sign In'),
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
                    const SizedBox(
                      height: 8,
                    ),
                    Parts().reusableTextField(
                        accountEmailController, 'Enter Email'),
                    const SizedBox(
                      height: 30,
                    ),
                    Parts().emailpassText('Number'),
                    const SizedBox(
                      height: 8,
                    ),
                    Parts().reusableTextField(
                        accountNumberController, 'Enter Phone Number'),
                    const SizedBox(
                      height: 30,
                    ),
                    Parts().emailpassText('Adress'),
                    const SizedBox(
                      height: 8,
                    ),
                    Parts().reusableTextField(
                        accountAdressController, 'Enter Adress'),
                    const SizedBox(
                      height: 30,
                    ),
                    Parts().forget(),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: _doSignUp,
                        child: Container(
                          height: 50,
                          width: 310,
                          decoration: BoxDecoration(
                            color: const Color(0xFF21464a),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              'Sign Up',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Parts().or(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account? ',
                          style:
                              TextStyle(color: Color(0xFFe1e8e3), fontSize: 20),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                                color: Colors.lightBlue, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _doSignUp() {
    String email = accountEmailController.text.toString().trim();
    String number = accountNumberController.text.toString().trim();
    String adress = accountAdressController.text.toString().trim();
    Account account = Account(adress: adress, email: email, phone: number);
    HiveDB().storeAccount(account);
    var account1 = HiveDB().loadAccount();
    print(account1.email);
    print(account1.phone);
    print(account1.adress);
  }
}
