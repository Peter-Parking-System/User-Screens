import 'package:flutter/material.dart';

class ParkedCars extends StatefulWidget {
  const ParkedCars({Key? key}) : super(key: key);

  @override
  _ParkedCarsState createState() => _ParkedCarsState();
}

class _ParkedCarsState extends State<ParkedCars> {

  Map data={};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;
    List TicketNo=[];
    TicketNo=data['TN'];
    List RC_No=[];
    RC_No=data['RcN'];
    List Floor=[];
    Floor=data['FlN'];
    List Time=[];
    Time=data['TI'];
    List slots=[];
    slots=data['S'];
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
            itemCount: TicketNo.length,
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
                                    Text('${TicketNo[index]}',
                                      style: TextStyle(
                                          fontFamily: 'montserrat',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                                          color: Color.fromRGBO(251, 251, 251, 1)
                                      ),),
                                    Text('Ticket No.',
                                      style: TextStyle(
                                          fontFamily: 'montserrat',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: Color.fromRGBO(251, 251, 251, 1)
                                      ),textAlign: TextAlign.end,
                                    ),

                                    SizedBox(height: 20,),
                                    Text('${Floor[index]}',
                                      style: TextStyle(
                                          fontFamily: 'montserrat',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                                          color: Color.fromRGBO(251, 251, 251, 1)
                                      ), textAlign: TextAlign.end,),
                                    Text('Floor No.',
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
                                    Text('${RC_No[index]}',
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

                                    Text('${slots[index]}',
                                      style: TextStyle(
                                          fontFamily: 'montserrat',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                                          color: Color.fromRGBO(251, 251, 251, 1)
                                      ),textAlign: TextAlign.end,
                                    ),
                                    Text('Slot No.',
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
                            SizedBox(height: 20,),

                            Center(
                              child: Text('${Time[index]}',
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Color.fromRGBO(251, 251, 251, 1)
                                ),textAlign: TextAlign.end,
                              ),
                            ),
                            Center(
                              child: Text('Time in',
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Color.fromRGBO(251, 251, 251, 1)
                                ),textAlign: TextAlign.end,
                              ),
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
