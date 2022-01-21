import 'package:flutter/material.dart';

class Owners extends StatefulWidget {
  const Owners({Key? key}) : super(key: key);

  @override
  _OwnersState createState() => _OwnersState();
}

class _OwnersState extends State<Owners> {
  Map data={};
  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;
    List Locality=[];
    Locality=data['L'];
    List OwnerName=[];
    OwnerName=data['ON'];
    List Ownerid=[];
    Ownerid=data['OiD'];
    List Phone=[];
    Phone=data['P'];
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Peter Parking System",
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),),
        ),
      ),
          body:Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: OwnerName.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(0,10,10,10),
                    child: GestureDetector(
                      onTap: (){},
                      child: Card(
                        color: Color.fromRGBO(38, 38, 38, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 10,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20,20,20,20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('${Ownerid[index]}',
                                          style: TextStyle(
                                              fontFamily: 'montserrat',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18,
                                              color: Color.fromRGBO(251, 251, 251, 1)
                                          ),),

                                        SizedBox(height: 20,),

                                        Text('${Locality[index]}',
                                          style: TextStyle(
                                              fontFamily: 'montserrat',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14,
                                              color: Color.fromRGBO(251, 251, 251, 1)
                                          ),),
                                      ],
                                    ),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text('${OwnerName[index]}',
                                          style: TextStyle(
                                              fontFamily: 'montserrat',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18,
                                              color: Color.fromRGBO(251, 251, 251, 1)
                                          ), textAlign: TextAlign.end,),

                                        SizedBox(height: 20,),

                                        Text('${Phone[index]}',
                                          style: TextStyle(
                                              fontFamily: 'montserrat',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14,
                                              color: Color.fromRGBO(251, 251, 251, 1)
                                          ),textAlign: TextAlign.end,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
    );
  }
}
