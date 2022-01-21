import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

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

Future<http.Response> getCars() async{
  return  http.get(Uri.parse("http://10.0.2.2:6060/Admin/getCars"));
}

Future<http.Response> getParked() async{
    return  http.get(Uri.parse("http://10.0.2.2:6060/Admin/getParked"));
  }


  @override
  Widget build(BuildContext context) {
    List O_owner_id=[];
    List O_names=[];
    List O_locality=[];
    List O_phones=[];
    List C_car_no=[];
    List C_owner_id=[];
    List C_models=[];
    List P_ticket=[];
    List P_rc_co=[];
    List P_floor=[];
    List P_slots=[];
    List P_time=[];
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
                    print(data);
                    for (var i in data){
                     O_owner_id.add(i['owner_id']);
                     O_names.add(i['owner_name']);
                     O_locality.add(i['locality']);
                     O_phones.add(i['phone_no']);
                    }
                    Navigator.pushNamed(context, "/Owner",arguments: {
                      'OiD':O_owner_id,
                      'ON':O_names,
                      'L':O_locality,
                      'P':O_phones,
                    });
                },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Color.fromRGBO(174, 32, 62, 1),width: 4)
                  ),

                  color: Color.fromRGBO(174,32, 62, 1),

                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: Text('Registered Owners', style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Color.fromRGBO(221, 195, 102, 1),
                    ),),
                  ),
                ),
              ),//Owners
              SizedBox(height: 20,),
              Center(
                child: RaisedButton(onPressed: ()async{
                  http.Response response=await getCars();
                  List data=json.decode(response.body);
                  print(data);
                  for (var i in data){
                    C_car_no.add(i['rc_no']);
                    C_owner_id.add(i['owner_id']);
                    C_models.add(i['model']);
                  }
                  Navigator.pushNamed(context, "/Cars",arguments: {
                    'RcN':C_car_no,
                    'OiD':C_owner_id,
                    'M':C_models,
                  });
                },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Color.fromRGBO(174, 32, 62, 1),width: 4)
                  ),

                  color: Color.fromRGBO(174, 32,62, 1),

                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: Text('Registered Cars', style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Color.fromRGBO(221, 195, 102, 1),
                    ),),
                  ),
                ),
              ),//All Registered Cars
              SizedBox(height: 20,),
              Center(
                child: RaisedButton(onPressed: () async{
                  http.Response response=await getParked();
                  List data=json.decode(response.body);
                  print(data);
                  for (var i in data){
                    P_ticket.add(i['ticket_no']);
                    P_rc_co.add(i['rc_no']);
                    P_floor.add(i['floor_no']);
                    P_time.add(i['time_in']);
                    P_slots.add(i['slot']);
                  }
                  Navigator.pushNamed(context, "/PC",arguments: {
                    'TN':P_ticket,
                    'RcN':P_rc_co,
                    'FlN':P_floor,
                    'TI':P_time,
                    'S':P_slots,
                  });
                },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Color.fromRGBO(174, 32, 62, 1),width: 4)
                  ),

                  color: Color.fromRGBO(174,32, 62, 1),

                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: Text('All Parked Cars', style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Color.fromRGBO(221, 195, 102, 1),
                    ),),
                  ),
                ),
              ),//All  Parked Cars
              SizedBox(height: 20,),
              Center(
                child: RaisedButton(onPressed: () async{
                  Navigator.pushReplacementNamed(context, '/Main');
                },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Color.fromRGBO(174, 32, 62, 1),width: 4)
                  ),

                  color: Color.fromRGBO(174,32, 62, 1),

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
              ),//Sign Out
            ],
          ),
        ),
      ),
    );
  }
}
