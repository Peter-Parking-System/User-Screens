import 'package:flutter/material.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({Key? key}) : super(key: key);

  @override
  _AdminLoginState createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  @override
  var admin_in;
  final pass="123";
  final inputcontrol=new TextEditingController();
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
        child:Column(
          children: [
            Card(
              margin: EdgeInsets.all(20),
              child: Text("Enter Admin Credentials",
                style: TextStyle(
                    color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
              TextField(
                controller: inputcontrol,
                decoration: InputDecoration(
                  hintText: "Admin Password",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              setState(() {
                admin_in = inputcontrol;
              });
              Navigator.pushNamed(context, '/admin');
            }, child: Text("Submit",style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            ),
            ),
          ],
        )
      ),
    );
  }
}
