import 'package:flutter/material.dart';
import 'package:peter_parking/Main_Screen.dart';
import 'package:peter_parking/User_Login.dart';
import 'package:peter_parking/Park.dart';
import 'package:peter_parking/Park2.dart';
import 'package:peter_parking/Remove.dart';
import 'package:peter_parking/Remove2.dart';
import 'package:peter_parking/Register.dart';
import 'package:peter_parking/Options.dart';
import 'package:peter_parking/Add_Car.dart';
import 'package:peter_parking/Remove_Car.dart';
import 'package:peter_parking/Admin.dart';
import 'package:peter_parking/AdminLogin.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(MaterialApp(
  initialRoute: '/AddCar',
  routes: {
    '/Main':(context)=>Main_Screen(),
    '/User':(context)=>User_Login(),
    '/Park':(context)=>Park(),
    '/Park2':(context)=>Park2(),
    '/Remove':(context)=>Remove(),
    '/Remove2':(context)=>Remove2(),
    '/Register':(context)=>Register(),
    '/Options':(context)=>Options(),
    '/AddCar':(context)=>AddCar(),
    '/RemoveCar':(context)=>RemoveCar(),
    '/AdminLogin':(context)=>AdminLogin(),
    '/Admin':(context)=>Admin(),
  },
));