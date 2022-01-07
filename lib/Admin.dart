import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:peter_parking/DataFIle.dart';

class Admin extends StatefulWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Peter Parking Login',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text("All Cars Parked",
                style:TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ) ,),
              ElevatedButton(onPressed: (){
                Navigator.pushReplacementNamed(context, "/Main");
              }, child: Text(""
                  "Done",
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
