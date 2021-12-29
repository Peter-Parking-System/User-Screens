import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var car_no;
  var ph_no;
  var model;

  final car_no_control= new TextEditingController();
  final ph_no_control= new TextEditingController();
  final model_control= new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Peter Parking System",
        style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
          fontSize: 18
        ),),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text("FOR NEW USERS ONLY",style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 20,),
              TextField(
                controller: car_no_control,
                decoration: InputDecoration(
                  labelText:"Car Plate Number" ,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: model_control,
                decoration: InputDecoration(
                  labelText:"Car Model" ,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: ph_no_control,
                decoration: InputDecoration(
                  labelText:"Phone Number" ,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              // SizedBox(height: 40,),
              ElevatedButton(onPressed: (){
                setState(() {
                  car_no=car_no_control.text;
                  ph_no=ph_no_control.text;
                  model=model_control.text;
                });
                Navigator.pushNamed(context, '/login');
              }, child: Text("Register",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
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
