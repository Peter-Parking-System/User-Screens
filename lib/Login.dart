import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  var id;
  var carno;
  final idcontrol=new TextEditingController();
  final carcontrol=new TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peter Parking Login',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
        ),
      ),
      body: Center(
            child:SingleChildScrollView(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 25,),
                Text("User Login:",style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                ),
                TextField(
                  controller: idcontrol,
                  decoration: InputDecoration(
                    hintText: "User Id",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: carcontrol,
                  decoration: InputDecoration(
                    hintText: "Car Number",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                ElevatedButton(onPressed: (){
                  setState(() {
                    carno=carcontrol;
                    id=idcontrol;
                  });
                  Navigator.pushNamed(context, '/options');
                  }, child: Text("Login",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),
                SizedBox(height: 40,),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, '/register');
                }, child: Text("Register a new User",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  ),
                SizedBox(height: 40,),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, '/adminlogin');
                }, child: Text("Admin Login",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),)
                ,)
              ],
          ),
            ),
        ),
    );
  }
}
