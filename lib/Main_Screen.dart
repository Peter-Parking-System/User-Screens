import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:peter_parking/DataFIle.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({Key? key}) : super(key: key);

  @override
  _Main_ScreenState createState() => _Main_ScreenState();
}

class _Main_ScreenState extends State<Main_Screen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Peter Parking System",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(50, 25, 50, 25),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.amberAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextButton(onPressed: (){
                          Navigator.pushNamed(context, "/Park");
                        }, child: Text(
                          "Park",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70
                          ),
                        )),
                      ),
                    ),
                    Container(
                      color: Colors.amberAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextButton(onPressed: (){
                          Navigator.pushNamed(context, "/Remove");
                        }, child: Text(
                          "Exit Park",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.lightBlueAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextButton(onPressed: (){
                      Navigator.pushNamed(context, "/Register");
                    }, child: Text(
                      "User Registration",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70
                      ),
                    )),
                  ),
                ),
                Container(
                  color: Colors.greenAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextButton(onPressed: (){
                      Navigator.pushNamed(context, "/Options");
                    }, child: Text(
                      "Add/Remove a Car",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                Container(
                  color: Colors.redAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextButton(onPressed: (){
                      Navigator.pushNamed(context, "/AdminLogin");

                    }, child: Text(
                      "Admin Login",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
