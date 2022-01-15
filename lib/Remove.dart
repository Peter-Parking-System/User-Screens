import 'package:flutter/material.dart';
import 'package:peter_parking/DataFIle.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class Remove extends StatefulWidget {
  const Remove({Key? key}) : super(key: key);

  @override
  _RemoveState createState() => _RemoveState();
}

class _RemoveState extends State<Remove> {

  Future<http.Response> exit_park(String ticket) async {
    return http.post(Uri.parse('http://10.0.2.2:6060/Park/exitPark'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(<String, dynamic>{
        'ticket_id': ticket
      }),
    );
  }
  @override

  final ticket_id_control=new TextEditingController();
  String ticket="";
  int ticket_id=0;

  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar:AppBar(
          title: Center(
            child: Text("Peter Parking System",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Card(
                  elevation: 20,
                  child:Padding(
                  padding: EdgeInsets.fromLTRB(50, 25, 50, 25),
                  child:Text(
                      "Enter Ticket ID to Exit",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ) ,
                ),
        ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      margin: EdgeInsets.all(10),
                      elevation: 20,
                      child:TextField(
                        controller: ticket_id_control,
                        decoration: InputDecoration(
                            hintText:"Enter Ticket ID",
                            labelText: "Ticket ID",
                            labelStyle: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: ElevatedButton(onPressed: ()async{
                    ticket=ticket_id_control.text;
                    http.Response response=await exit_park(ticket);
                    Map data = json.decode(response.body);
                    var user_id=data['message'];
                    Navigator.pushReplacementNamed(context, "/Box",arguments: {
                      'title':'Your Car has been successfully removed from parking. Please pay Rs $user_id',
                      'content':""
                    });

                  }, child: Text("Exit Parking",
                    style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
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
