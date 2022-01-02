import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:peter_parking/DataFIle.dart';

class Remove2 extends StatefulWidget {
  const Remove2({Key? key}) : super(key: key);

  @override
  _RemoveState createState() => _RemoveState();
}

class _RemoveState extends State<Remove2> {
  @override

  final rccontrol=new TextEditingController();
  String rcno="";
  int cost=0;

  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar:AppBar(
          title: Center(
            child: Text("Peter Parking System",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Card(
                  elevation: 20,
                  child:Padding(
                    padding: EdgeInsets.fromLTRB(50, 25, 50, 25),
                    child:Text(
                      "Enter RC Number to Exit",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ) ,
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      margin: EdgeInsets.all(10),
                      elevation: 20,
                      child:TextField(
                        controller: rccontrol,
                        decoration: InputDecoration(
                            hintText:"Enter RC Number",
                            labelText: "RC Number",
                            labelStyle: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                      ),
                    ),
                  ),
                ),

                Card(
                  elevation: 20,
                  child: Center(
                    child: Text(
                      "Your Total Cost is\n $cost Rs",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: ElevatedButton(onPressed: (){
                    // setState(() {
                    //   rcno=rccontrol.text;
                    //   //print(rcno);
                    //   // print(userid);
                    // }
                    // );
                    Navigator.pushNamed(context, "/Main");
                  }, child: Text("Got It",
                    style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
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
