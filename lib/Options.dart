import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  const Options({Key? key}) : super(key: key);

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
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
            children: [
              Text("Do you want to park the car or take the car out?",
              style: TextStyle(
              color: Colors.red,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 25,),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "/park");
              }, child: Text("Park",style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              ),

              SizedBox(height: 25,),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "/remove");
              }, child: Text("Remove",style: TextStyle(
                color: Colors.black,
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
