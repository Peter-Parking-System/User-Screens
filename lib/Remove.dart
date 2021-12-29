import 'package:flutter/material.dart';

class Remove extends StatefulWidget {
  const Remove({Key? key}) : super(key: key);

  @override
  _RemoveState createState() => _RemoveState();
}

class _RemoveState extends State<Remove> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Peter Parking System",
          style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Card(
              color: Colors.redAccent,
              child: Text("You parked in at start time and\nare leaving at end time",
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Card(color: Colors.redAccent,
            child: Text(
              "You were parked for a total duration of time and hence are being charged cost"
            ,style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/login");
            }, child: Text(""
                "Done",
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
