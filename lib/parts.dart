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

  Widget signInText() {
    return const Text(
      'Sign In',
      style: TextStyle(
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

  Widget customButton(String label){
    return Center(
      child: Container(
        height: 50,
        width: 310,
        decoration: BoxDecoration(
          color: const Color(0xFF21464a),
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Center(
          child: Text(label, style: const TextStyle(color: Colors.white, fontSize: 17),),
        ),
      ),
    );
  }
}
