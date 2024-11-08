import 'package:flutter/material.dart';
import 'package:quote_app/screen/alone.dart';
import 'package:quote_app/screen/amazing.dart';
import 'package:quote_app/screen/angry.dart';
import 'package:quote_app/screen/articles.dart';
import 'package:quote_app/screen/category.dart';
import 'package:quote_app/screen/confidence.dart';
import 'package:quote_app/screen/cool.dart';
import 'package:quote_app/screen/encouraging.dart';
import 'package:quote_app/screen/homepage.dart';
import 'package:quote_app/screen/inspirational.dart';
import 'package:quote_app/screen/latest.dart';
import 'package:quote_app/screen/latestcategory.dart';
import 'package:quote_app/screen/motivation.dart';
import 'package:quote_app/screen/poeple.dart';
import 'package:quote_app/screen/positivethink.dart';
import 'package:quote_app/screen/quotes.dart';
import 'package:quote_app/screen/selflove.dart';
import 'package:quote_app/screen/splash_screen.dart';
import 'package:quote_app/screen/splash_screen2.dart';
import 'package:quote_app/screen/trending.dart';
import 'package:quote_app/screen/victory.dart';
import 'package:quote_app/screen/weekend.dart';
import 'package:quote_app/screen/wisdom.dart';
import 'package:quote_app/screen/wishlist.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "home":(context){
            return HomePage();
          },
          "/":(context){
            return Splash_Screen();
          },
          "splashscreen2":(context){
            return Splash_Screen_Two();
          },
          "category":(context){
            return Category();
          },
          "quotes":(context){
            return Quotes();
          },
          "latest":(context){
            return Latest();
          },
          "articles":(context){
            return Articles();
          },
          "alone":(context){
            return Alone();
          },
          "amazing":(context){
            return Amazing();
          },
          "motivation":(context){
            return Motivation();
          },
          "inspirational":(context){
            return Inspirational();
          },
          "encouraging":(context){
            return Encouraging();
          },
          "confidence":(context){
            return Confidence();
          },
          "wisdom":(context){
            return Wisdom();
          },
          "positivethinking":(context){
            return PositiveThinking();
          },
          "people":(context){
            return Poeple();
          },
          "selflove":(context){
            return SelfLove();
          },
          "latestcategory":(context){
            return Latest_Category();
          },
          "trending":(context){
            return Trending();
          },
          "angry":(context){
            return Angry();
          },
          "weekend":(context){
            return Weekend();
          },
          "victory":(context){
            return Victory();
          },
          "cool":(context){
            return Cool();
          },
          "lifestyle":(context){
            return Articles();
          },
          "wishlist":(context){
            return WishList();
          },
        },
      )
  );
}