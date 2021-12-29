import 'package:flutter/material.dart';

class Park extends StatefulWidget {
  const Park({Key? key}) : super(key: key);

  @override
  _ParkState createState() => _ParkState();
}

class _ParkState extends State<Park> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Card(
              color: Colors.redAccent,
                 elevation: 10,
                 child:Text("Your entry time is:",
                 style: TextStyle(
                    fontSize: 18,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
            ),
            SizedBox(height: 20,),
            Card(
              elevation: 10,
              child: Text("Your lot and floor is:",
              style: TextStyle(
              color: Colors.red,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              ),
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/login");
            }, child: Text("Got It",
            style: TextStyle(
              color: Colors.amberAccent,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
