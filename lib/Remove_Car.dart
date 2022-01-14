import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class RemoveCar extends StatefulWidget {
  const RemoveCar({Key? key}) : super(key: key);

  @override
  _RemoveCarState createState() => _RemoveCarState();
}

class _RemoveCarState extends State<RemoveCar> {
  @override

  var rc_no;
  final rc_no_controller=new TextEditingController();
  final control_new=new TextEditingController();
  Future<http.Response> delete_car(String rc_no) async {
    return http.post(Uri.parse('http://10.01.2.2:6060/Car/removeCar'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(<String, String>{
        'reg_no': rc_no,
      }),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Peter Parking System",
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(25, 25, 25, 10),
            child: Padding(
              padding: EdgeInsets.fromLTRB(50, 25, 50, 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "\t\t\t\tEnter RC Number to be \t\t\t\t\t\t\tDeleted from your \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tAccount",

                        style: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      )
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: control_new,
                        decoration: InputDecoration(
                          hintText:"Enter Your RC Number",
                          labelText: "RC Number",
                          labelStyle: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: ()
                    async{
                      rc_no=control_new.text;
                      http.Response response=await delete_car(rc_no);
                      // String data = json.decode(response.body);
                      // print(data);
                      Map data = json.decode(response.body);
                      String user=data['message'];
                      print(user);
                      Navigator.pushReplacementNamed(context, "/Main");
                  }, child: Text("Submit",
                    style: TextStyle(
                      color: Colors.amber,
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
      ),
    );
  }
}
