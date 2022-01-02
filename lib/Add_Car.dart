import 'package:flutter/material.dart';

class AddCar extends StatefulWidget {
  const AddCar({Key? key}) : super(key: key);

  @override
  _AddCarState createState() => _AddCarState();
}

class _AddCarState extends State<AddCar> {
  @override

  var rcno;
  var ownerid;
  var model;

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
                        controller: rc_controller,
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
                  ElevatedButton(onPressed: (){
                    setState(() {
                      rcno=rc_controller;
                      ownerid=owner_id_controller;
                      model=model_controller;
                    });
                    Navigator.pushNamed(context, "/Main");
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
