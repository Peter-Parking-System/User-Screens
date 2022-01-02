import 'package:flutter/material.dart';

class RemoveCar extends StatefulWidget {
  const RemoveCar({Key? key}) : super(key: key);

  @override
  _RemoveCarState createState() => _RemoveCarState();
}

class _RemoveCarState extends State<RemoveCar> {
  @override

  var rc_no;
  final rc_no_controller=new TextEditingController();

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
      body: Center(
        child: Container(
          margin: EdgeInsets.all(50/2),
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
                      controller: rc_no_controller,
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
                ElevatedButton(onPressed: (){
                  setState(() {
                    rc_no=rc_no_controller;
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
    );
  }
}
