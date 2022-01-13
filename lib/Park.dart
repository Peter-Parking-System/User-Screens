import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:peter_parking/DataFIle.dart';
import 'package:http/http.dart' as http;

class Park extends StatefulWidget {
  const Park({Key? key}) : super(key: key);

  @override
  _ParkState createState() => _ParkState();
}

class _ParkState extends State<Park> {

  Future<http.Response> park(String rc_no) async {
    return http.post(Uri.parse('http://10.0.2.2:6060/Park/Park'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(<String, String>{
        'rc_no': rc_no,
      }),
    );
  }
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
                  // Container(
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(10.0),
                  //     child: Card(
                  //       margin: EdgeInsets.all(10),
                  //          elevation: 20,
                  //          child:TextField(
                  //           controller: usercontrol,
                  //           decoration: InputDecoration(
                  //             hintText:"Enter User Id",
                  //             labelText: "User Id",
                  //             labelStyle: TextStyle(
                  //               color: Colors.amber,
                  //               fontWeight: FontWeight.bold,
                  //             )
                  //           ),
                  //          ),
                  //     ),
                  //   ),
                  // ),
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
                  ElevatedButton(onPressed: ()
                    async{
                    rcno=rccontrol.text;
                      http.Response response=await park(rcno);
                      String data = json.decode(response.body);
                      print(data);
                      Navigator.pushReplacementNamed(context, "/Park2");
                    },
                   child: Text("Park",
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
