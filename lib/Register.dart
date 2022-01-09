import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:peter_parking/DataFIle.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String name="";
  String locality="";
  String phone="";
  String user_res="";

  final name_control= new TextEditingController();
  final ph_no_control= new TextEditingController();
  final locality_control= new TextEditingController();

  Future<http.Response> register(String name,String local, String ph_number) async {
    return http.post(Uri.parse('http://10.0.2.2:6060/Owner/newOwner'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(<String, String>{
        'name': name,
        'locality': local,
        'phone_no':ph_number,
      }),
    );
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Peter Parking System",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18+2
          ),),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child:Container(
            margin: EdgeInsets.all(25),
            child: Padding(
              padding: EdgeInsets.fromLTRB(50, 25, 50, 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        controller: name_control,
                        decoration: InputDecoration(
                            hintText:"Enter Your Name",
                            labelText: "Name",
                            labelStyle: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        controller: locality_control,
                        decoration: InputDecoration(
                            hintText:"Enter Your Locality",
                            labelText: "Locality",
                            labelStyle: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        controller: ph_no_control,
                        decoration: InputDecoration(
                            hintText:"Enter Your Phone Number",
                            labelText: "Phone Number",
                            labelStyle: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: ()
                              async{
                              name=name_control.text;
                              locality=locality_control.text;
                              phone=ph_no_control.text;
                              http.Response response=await register(name, locality  ,phone);
                              Map data = json.decode(response.body);
                              int user_id=data['message'];
                              print(user_id);
                  },
                    child: Text("Submit",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                  Card(
                    margin: EdgeInsets.all(25),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                      child: Text(
                      "Your User Id is user_id",

                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: ()
                    // setState(() {
                    //   name=name_control;
                    //   locality=locality_control;
                    //   phone=ph_no_control;
                    // });
                    {

                    Navigator.pushReplacementNamed(context, "/Main");
                  }, child: Text("Got It",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}
