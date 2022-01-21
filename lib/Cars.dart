import 'package:flutter/material.dart';

class Cars extends StatefulWidget {
  const Cars({Key? key}) : super(key: key);

  @override
  _CarsState createState() => _CarsState();
}

class _CarsState extends State<Cars> {

  Map data={};
  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;
    List rc_no=[];
    rc_no=data['RcN'];
    List Owner_id=[];
    Owner_id=data['OiD'];
    List Model=[];
    Model=data['M'];
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
            itemCount: rc_no.length,
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
                                    Text('${rc_no[index]}',
                                      style: TextStyle(
                                          fontFamily: 'montserrat',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                                          color: Color.fromRGBO(251, 251, 251, 1)
                                      ),),
                                    Text('RC No.',
                                      style: TextStyle(
                                          fontFamily: 'montserrat',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: Color.fromRGBO(251, 251, 251, 1)
                                      ),textAlign: TextAlign.end,
                                    ),

                                    SizedBox(height: 20,),

                                    Text('${Owner_id[index]}',
                                      style: TextStyle(
                                          fontFamily: 'montserrat',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                                          color: Color.fromRGBO(251, 251, 251, 1)
                                      ),),
                                    Text('Owner ID',
                                      style: TextStyle(
                                          fontFamily: 'montserrat',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: Color.fromRGBO(251, 251, 251, 1)
                                      ),textAlign: TextAlign.end,
                                    ),
                                  ],
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('${Model[index]}',
                                      style: TextStyle(
                                          fontFamily: 'montserrat',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                                          color: Color.fromRGBO(251, 251, 251, 1)
                                      ), textAlign: TextAlign.end,),
                                    Text('Model',
                                      style: TextStyle(
                                          fontFamily: 'montserrat',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: Color.fromRGBO(251, 251, 251, 1)
                                      ),textAlign: TextAlign.end,
                                    ),
                                    SizedBox(height: 20,),
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
