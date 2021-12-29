import 'package:peter_parking/Options.dart';
import 'package:flutter/material.dart';
import 'package:peter_parking/Login.dart';
import 'package:peter_parking/Register.dart';
import 'package:peter_parking/Admin.dart';
import 'package:peter_parking/AdminLogin.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/login',
  routes: {
    '/login':(context)=>Login(),
    '/register':(context)=>Register(),
    '/admin':(context)=>Admin(),
    '/adminlogin':(context)=>AdminLogin(),
    '/options':(context)=>Options()
  },
));