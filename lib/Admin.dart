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
//   String url= "http://10.0.2.2:6060/admin_view/getParked";
    // var display=json.decode(response.body);
  // List<AllOwners> owners=[];
  // for (var i in display){
  //   AllOwners a=AllOwners(Owner_Id: i['owner_id'], Owner_Name: i['owner_name'], Local: i['locality'], phone: i['phone_no']);
  //   owners.add(a);
  //   print(a);
  // }
  // return owners;
}
  @override
  // void initState(){
  //   super.initState();
  //   futureCars=fetchCars();
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Peter Parking Login',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text("All Cars Parked",
                style:TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ) ,),
              // Container(
              //   padding: EdgeInsets.all(16),
              //   child: FutureBuilder(
              //     future: getOwner(),
              //     builder: (BuildContext ctx, AsyncSnapshot snapshot){
              //       if(snapshot.data==null){
              //         return Container(
              //           child: Center(
              //             child: CircularProgressIndicator(),
              //           ),
              //         );
              //       }else
              //         {
              //           return ListView.builder(itemCount:snapshot.data.length,
              //               itemBuilder: (ctx,index)=>ListTile(
              //                 title: Text(snapshot.data[index].title),
              //                 subtitle: Text(snapshot.data[index].body),
              //                 contentPadding: EdgeInsets.only(bottom: 20),
              //               ),
              //           );
              //         }
              //     },
              //   ),
              // ),
              ElevatedButton(onPressed: ()
              async{
                http.Response response=await getOwner();
                Map data=json.decode(response.body);
                print(data['rows']);
                Navigator.pushReplacementNamed(context, "/Main");
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
      ),
    );
  }
}
