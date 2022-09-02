import 'package:databasetask2/pages/signUpPage.dart';
import 'package:flutter/material.dart';

class Parts {
  Widget circleAvatar() {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: const DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget welcoming() {
    return const Text(
      'Welcome',
      style: TextStyle(color: Colors.white54, fontSize: 20),
    );
  }

  Widget signInText(String l) {
    return  Text(
      l,
      style: const TextStyle(
          color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
    );
  }

  Widget emailpassText(String label) {
    return Text(
      label,
      style: const TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget reusableTextField(TextEditingController controller, String hint) {
    return TextField(
      controller: controller,
      style: const TextStyle(fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: Color(0xFFe1e8e3),
        ),
      ),
    );
  }

  Widget forget() {
    return const Center(
      child: Text(
        'Forget Password ?',
        style: TextStyle(
            color: Color(0xFFe1e8e3),
            fontSize: 17,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  // Widget customButton(String label) {
  //   return
  // }

  Widget or() {
    return Container(
      padding: const EdgeInsets.only(left: 45),
      child: Row(
        children: [
          Container(
            width: 100,
            color: const Color(0xFFe1e8e3),
            height: 2,
          ),
          const SizedBox(width: 15,),
          const Text(
            'OR',
            style: TextStyle(color: Color(0xFFe1e8e3), fontSize: 20),
          ),
          const SizedBox(width: 15,),
          Container(
            width: 100,
            color: const Color(0xFFe1e8e3),
            height: 2,
          ),
        ],
      ),
    );
  }

  static Widget ask(BuildContext context, String text1, String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: const TextStyle(color: Color(0xFFe1e8e3), fontSize: 20),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignUpPage(),
              ),
            );
          },
          child: Text(
            text2,
            style: const TextStyle(color: Colors.lightBlue, fontSize: 20),
          ),
        ),
      ],
    );
  }
}

