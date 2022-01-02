import 'package:flutter/material.dart';

class User_Login extends StatefulWidget {
  const User_Login({Key? key}) : super(key: key);

  @override
  _User_LoginState createState() => _User_LoginState();
}

class _User_LoginState extends State<User_Login> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Peter Parking System",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(50, 25, 50, 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                color: Colors.lightBlueAccent,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextButton(onPressed: (){}, child: Text(
                    "Park",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70
                    ),
                  )),
                ),
              ),
              Container(
                color: Colors.redAccent,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextButton(onPressed: (){}, child: Text(
                    "Remove",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                  )),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
