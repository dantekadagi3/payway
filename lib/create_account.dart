import 'package:flutter/material.dart';
import 'package:payway/main.dart';
import 'package:payway/splash_screen.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _header(),
                const SizedBox(
                  height: 30,
                ),
                _logText(),
                const SizedBox(
                  height: 30,
                ),
                _bottomNote(),
                const SizedBox(
                  height: 30,
                ),
                _logButton(context),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _header() {
  return Align(
    alignment: Alignment.topCenter,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        logo(),
        const Text(
          "Peiway",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}

Widget _logText() {
  return Column(
    children: [
      TextField(
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: "Enter your name",
          hintStyle: const TextStyle(color: Colors.grey),
          labelText: "Name",
          labelStyle: const TextStyle(color: Colors.green),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 10),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.green,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          filled: false,
          fillColor: null,
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      TextField(
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: "Enter your email e.g joe@gmail.com",
          hintStyle: const TextStyle(color: Colors.grey),
          labelText: "Email",
          labelStyle: const TextStyle(color: Colors.green),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 10),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.green,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          filled: false,
          fillColor: null,
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      TextField(
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: "Enter your password",
          hintStyle: const TextStyle(color: Colors.grey),
          labelText: "Password",
          labelStyle: const TextStyle(color: Colors.green),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 10),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.green,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          prefixIcon: const Icon(Icons.lock_outlined),
          prefixIconColor: Colors.grey,
          filled: false,
          fillColor: null,
        ),
        obscureText: true,
        obscuringCharacter: "*",
      ),
    ],
  );
}

Widget _logButton(BuildContext context) {
  return FilledButton(
      onPressed: () {
        Navigator.of(context).pushNamed('/login');
      },
      style: FilledButton.styleFrom(
        backgroundColor: mainColor,
        shadowColor: Colors.black,
        padding: const EdgeInsets.all(20.0),
        elevation: 2,
      ),
      child: const Text("Create"));
}

Widget _bottomNote() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("By creating an account you agree to the"),
      TextButton(onPressed: () {}, child: const Text("Terms of Service"))
    ],
  );
}
