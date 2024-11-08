import 'dart:async';
import 'package:flutter/material.dart';

class Splash_Screen_Two extends StatefulWidget {
  const Splash_Screen_Two({super.key});

  @override
  State<Splash_Screen_Two> createState() => _Splash_Screen_TwoState();
}

class _Splash_Screen_TwoState extends State<Splash_Screen_Two> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushNamedAndRemoveUntil("home",(route)=>false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child:Text.rich(
            TextSpan(
              children:[
                TextSpan(
                  text: '"Dont tell people\n',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  )
                ),
                TextSpan(
                    text: 'your plans.\n',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                    )
                ),
                TextSpan(
                    text: 'Show then your\n',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                    )
                ),
                TextSpan(
                    text: 'results."\n',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                    )
                ),
              ],
            ),
        ),
      ),
    );
  }
}
