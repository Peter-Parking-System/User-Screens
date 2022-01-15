import 'package:flutter/material.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({Key? key}) : super(key: key);
  @override
  _DialogBoxState createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  Map data={};
  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;
    var title=data['title'];
    var content=data['content'];
    return Scaffold(
      appBar: AppBar(
                  title: Center(
            child: Text(
              "Peter Parking System",
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          ),
      body: Center(
        child:  AlertDialog(
              title:  Text('$title',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
              ),
              content: Text('$content',
              style:TextStyle(
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pushReplacementNamed(context, '/Main'),
                  child: const Text('Got It',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),),
                ),
              ],
            ),
        ),
      );

      }
}

