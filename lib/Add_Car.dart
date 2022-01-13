import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AddCar extends StatefulWidget {
  const AddCar({Key? key}) : super(key: key);

  @override
  _AddCarState createState() => _AddCarState();
}

class _AddCarState extends State<AddCar> {

  Future<http.Response> add_car(String rcno,int owner, String model) async {
    return http.post(Uri.parse('http://10.0.2.2:6060/Car/addCar'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(<String, dynamic>{
        'rc_no': rcno,
        'owner_id': owner,
        'model':model,
      }),
    );
  }


  @override

  var rcno;
  var ownerid;
  var model;

  String ownerids="";

  final rc_controller=new TextEditingController();
  final owner_id_controller=new TextEditingController();
  final model_controller=new TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Peter Parking System",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(50, 25, 50, 25),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      child: TextField(
                        controller: rc_controller,
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
                  Card(
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      child: TextField(
                        controller: owner_id_controller,
                        decoration: InputDecoration(
                          hintText:"Enter Your Owner ID",
                          labelText: "Owner ID",
                          labelStyle: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      child: TextField(
                        controller: model_controller,
                        decoration: InputDecoration(
                          hintText:"Enter Your Car Model",
                          labelText: "Model",
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
                      rcno=rc_controller.text;
                      ownerids=owner_id_controller.text;
                      ownerid=int.parse(ownerids);
                      model=model_controller.text;
                      http.Response response=await add_car(rcno, ownerid ,model);
                      Map data = json.decode(response.body);
                      String user=data['message'];
                      print(user);
                      Navigator.pushReplacementNamed(context, "/Main");
                    },
                child: Text("Submit",
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
