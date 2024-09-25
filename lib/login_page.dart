import 'package:flutter/material.dart';
import 'package:payway/main.dart';
import 'package:payway/splash_screen.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
                _logButton(context),
                _bottomText(context)
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
        Navigator.of(context).pushNamed('/search');
      },
      style: FilledButton.styleFrom(
        backgroundColor: mainColor,
        shadowColor: Colors.black,
        padding: const EdgeInsets.all(20.0),
        elevation: 2,
      ),
      child: const Text("LogIn"));
}

Widget _bottomText(BuildContext context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account ?"),
        const SizedBox(width: 1),
        TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/signup');
            },
            child: const Text(
              "SignUp",
              style: TextStyle(decoration: TextDecoration.underline),
            ))
      ],
    ),
  );
}
