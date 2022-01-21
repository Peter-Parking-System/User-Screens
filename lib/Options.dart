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
        title: Center(
          child: Text(
            "Peter Parking System",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18+2
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(50, 25, 50, 25),
                child: Card(
                  color: Colors.lightBlueAccent,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child:TextButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, "/AddCar");
                      },
                      child: Text(
                        "ADD",
                        style: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    )
                    ),
                  ),
                ),
              // Padding(
              //   padding: EdgeInsets.fromLTRB(50, 25, 50, 25),
              //   child: Card(
              //     color: Colors.lightBlueAccent,
              //     child: Padding(
              //         padding: EdgeInsets.all(15),
              //         child:TextButton(
              //           onPressed: (){
              //             Navigator.pushReplacementNamed(context, "/RemoveCar");
              //           },
              //           child: Text(
              //             "REMOVE",
              //             style: TextStyle(
              //               color: Colors.amber,
              //               fontWeight: FontWeight.bold,
              //               fontSize: 18,
              //             ),
              //           ),
              //         )
              //     ),
              //   ),
              // ),
            ],
          ),
          ),
      ),
    );
  }
}
