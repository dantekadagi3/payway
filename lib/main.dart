import 'package:flutter/material.dart';
import 'package:payway/create_account.dart';
import 'package:payway/login_page.dart';
//import 'package:payway/page1.dart';
import 'package:payway/page2.dart';
import 'package:payway/page3.dart';
import 'package:payway/search_screen.dart';
import 'package:payway/splash_screen.dart';
//import 'package:payway/splash_screen.dart';
Color mainColor=const Color(0xFF33B864);

void main() {
  runApp( const PayWay());
}

class PayWay extends StatelessWidget {
  const PayWay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      

      initialRoute: '/',
      routes: {
        '/':(_)=> const SplashScreen(),
        '/page2':(_)=>const PageTwo(),
        '/page3':(_)=> const PageThree(),
        '/login':(_)=>const LogIn(),
        '/signup':(_)=>const CreateAccount(),
        '/search':(_)=>const SearchScreen(),
        
        

      },


    );
  }
}
