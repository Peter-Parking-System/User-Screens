import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:peter_parking/DataFIle.dart';

class Park2 extends StatefulWidget {
  const Park2({Key? key}) : super(key: key);

  @override
  _ParkState createState() => _ParkState();
}

class _ParkState extends State<Park2> {
  @override
  final usercontrol=new TextEditingController();
  final rccontrol=new TextEditingController();

  String user="";
  String rcno="";
  int userid=0;
  int lot=0;

  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Peter Parking System",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(50, 25, 50, 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      margin: EdgeInsets.all(10),
                      elevation: 20,
                      child:Text(
                        "User Id",
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      margin: EdgeInsets.all(10),
                      elevation: 20,
                      child:Text(
                         "RC Number",
                            style:TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                            )
                        ),
                      ),
                    ),
                ),
                Card(
                  elevation: 30,
                  child: Padding(
                    padding: EdgeInsets.all(25),
                    child: Center(
                      child: Text(
                        "Park your Car in\n\tLot Number: $lot",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(onPressed: (){
                  // setState(() {
                  //   rcno=rccontrol.text;
                  //   user=usercontrol.text;
                  //   userid=int.parse(user);
                  //   // print(rcno);
                  //   // print(userid);
                  // });
                  Navigator.pushReplacementNamed(context, "/Main");
                }, child: Text("Got It",
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
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
