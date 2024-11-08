import 'dart:async';
import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushNamedAndRemoveUntil("splashscreen2",(route)=>false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:CircleAvatar(
          radius: 80,
          backgroundImage: NetworkImage("https://is1-ssl.mzstatic.com/image/thumb/Purple112/v4/9e/95/1e/9e951eff-4290-ee2f-fb6c-f58d9c105055/QuotaAppIcon-0-1x_U007emarketing-0-10-0-85-220.jpeg/1200x630wa.png"),
        ),
      ),
    );
  }
}
