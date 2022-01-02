import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:peter_parking/DataFIle.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({Key? key}) : super(key: key);

  @override
  _AdminLoginState createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  @override

  var username;
  var password;
  final pass="123";
  final username_control=new TextEditingController();
  final password_controller=new TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Peter Parking System",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),),
      ),
      body: Center(
        child:SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(50, 25, 50, 25),
            child:Padding(
            padding:EdgeInsets.all(25) ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  margin: EdgeInsets.all(20),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text("Enter Admin ID and PassWord",
                      style: TextStyle(
                          color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        controller: username_control,
                        decoration: InputDecoration(
                          hintText: "Admin ID",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      controller: password_controller,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    username=username_control;
                    password=password_controller;
                  });
                  Navigator.pushNamed(context, '/Admin');
                }, child: Text("Submit",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                ),
                ),
              ],
            ),
          )
      ),
        ),
      ),
    );
  }
}
