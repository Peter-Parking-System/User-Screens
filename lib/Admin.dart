import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

//
// Future<AllCars> fetchCars() async{
//   final response=await http.get(Uri.parse('http://10.0.2.2:6060/admin_view/getParked'));
//   if(response.statusCode==200) {
//     return AllCars.fromJson(jsonDecode(response.body));
//   }
//   else{
//     throw Exception("Failed");
//   }
// }
//
class AllOwners {
  final int Owner_Id;
  final String Owner_Name;
  final String Local;
  final int phone;

  AllOwners({
    required this.Owner_Id,
    required this.Owner_Name,
    required this.Local,
    required this.phone,
  });
}

class Admin extends StatefulWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  // late Future<AllCars> futureCars;

  Future<http.Response> getOwner() async{
   return  http.get(Uri.parse("http://10.0.2.2:6060/Admin/getOwners"));
}
  @override
  Widget build(BuildContext context) {
    List owner_id=[];
    List car_no=[];
    List names=[];
    List models=[];
    List locality=[];
    List phones=[];
    return Scaffold(
      appBar: AppBar(
        title:Text('Peter Parking Login',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text("What would you like to view?",
                style:TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: RaisedButton(onPressed: () async{
                  http.Response response=await getOwner();
                    List data=json.decode(response.body);
                    for (var i in data){
                     owner_id.add(i['owner_id']);
                     names.add(i['owner_name']);
                     locality.add(i['locality']);
                     phones.add(i['phone_no']);
                    }
                    Navigator.pushNamed(context, "/Owner",arguments: {
                      'OiD':owner_id,
                      'ON':names,
                      'L':locality,
                      'P':phones,
                    });
                },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Color.fromRGBO(174, 32, 62, 1),width: 4)
                  ),

                  color: Color.fromRGBO(174,32, 62, 1),

                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: Text('Owners', style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Color.fromRGBO(221, 195, 102, 1),
                    ),),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: RaisedButton(onPressed: (){
                  Navigator.pushReplacementNamed(context,'/Main');
                },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Color.fromRGBO(174, 32, 62, 1),width: 4)
                  ),

                  color: Color.fromRGBO(174, 32,62, 1),

                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: Text('Sign Out', style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Color.fromRGBO(221, 195, 102, 1),
                    ),),
                  ),
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
