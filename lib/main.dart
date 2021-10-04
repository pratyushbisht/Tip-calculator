import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double bill = 0;
  double tip = 0;
  double amount = 0;
  double tipperPerson = 0;
  double amountperPerson = 0;
  final billInput = TextEditingController();
  int person = 1;
  final personsInput = TextEditingController();
  void Calculate(){
    tipperPerson = (bill*tip)/person;
    amountperPerson=(bill)/person;
  }
  TextStyle title =  TextStyle(
  color: Color(0XFF5B777B),
  fontSize: 24.0,
  fontWeight: FontWeight.bold,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFFC5E4E7),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //Header
            Container(
              width: double.infinity,
              height: 200.0,
              child: Center(
                child: Image.asset("Assets/logo.png"),
              ),
            ),
            //Body
            Container(
             padding: EdgeInsets.all(25.0),
              width: double.infinity,
              height: 900.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight:Radius.circular(30.0)
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[

                  Text(
                      'Bills',
                    style: title,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF3F8FB),
                      border: InputBorder.none,
                      hintText: "eg:100",
                      prefixIcon: Icon(Icons.attach_money),

                    ),
                    textAlign: TextAlign.end,
                    controller: billInput,
                    keyboardType: TextInputType.numberWithOptions(),
                    onEditingComplete: (){
                      setState(() {
                        if(billInput.text.isNotEmpty){
                          bill = double.parse(billInput.text);
                        }else{
                          tip=0;
                        }
                        Calculate();
                      });
                    },

                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0474B),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text(
                      'Select Tip%',
                    style: title,
                  ),
                  SizedBox(height:20.0,),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: SizedBox(
                            height: 60.0,
                            child: TextButton(
                              style: TextButton.styleFrom(
                              backgroundColor: Color(0xFF00474B),
                                shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.5)))

                               ),
                              onPressed: (){
                                setState(() {
                                  tip = 0.05;
                                });

                              },
                              child: Text("5%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28.0,
                                ),

                              ),
                            ),
                          ),
                      ),
                      SizedBox(width: 10.0,),
                      Expanded(
                        child: SizedBox(
                          height: 60.0,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xFF00474B),
                                shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.5)))

                            ),
                            onPressed: (){
                              setState(() {
                                tip = 0.1;
                              });
                            },
                            child: Text("10%",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 28.0,
                              ),

                            ),
                          ),
                        ),
                      ),




                    ],
                  ),
                  SizedBox(height: 15.0,),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                          height: 60.0,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xFF00474B),
                                shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.5)))

                            ),
                            onPressed: (){
                              setState(() {
                                tip = 0.15;
                              });
                            },
                            child: Text("15%",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 28.0,
                              ),

                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Expanded(
                        child: SizedBox(
                          height: 60.0,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xFFF3F8FB),
                                shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.5)))

                            ),
                            onPressed: (){},
                            child: Text("Custom",
                              style: title,

                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.0,),



                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Text('No. of Customers',
                  style: title,),
                  SizedBox(height: 20.0,),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF3F8FB),
                      border: InputBorder.none,
                      hintText: "eg:5",
                      prefixIcon: Icon(Icons.people),
                    ),
                    controller: personsInput,
                    textAlign: TextAlign.end,
                    style: title,
                    keyboardType: TextInputType.numberWithOptions(),
                    onEditingComplete: (){
                      setState(() {
                        if(billInput.text.isNotEmpty){
                          person = int.parse(personsInput.text);
                        }else{
                          tip=0;
                        }
                        Calculate();
                      });
                    },


                    ),
                    SizedBox(height: 20.0,),
                  Flexible(
                    child: Container(
                      height: 300.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFF00474B),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Tip Amount',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28.0,
                                      ),
                                    ),
                                    SizedBox(height: 10.0,),
                                    Text(
                                      '/ person',
                                      style: TextStyle(
                                        color: Colors.teal,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                    ),



                                  ],
                                ),
                                Text('\$${tipperPerson.toStringAsFixed(2)}',
                                style: TextStyle(
                                  color: Colors.tealAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 34.0,
                                ),),


                              ],
                            ),
                            SizedBox(height: 20.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[

                                    Text(
                                      'Total',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28.0,
                                      ),
                                    ),
                                    SizedBox(height: 10.0,),
                                    Text(
                                      '/ person',
                                      style: TextStyle(
                                        color: Colors.teal,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                    ),



                                  ],
                                ),
                                Text('\$${amountperPerson.toStringAsFixed(2)}',
                                  style: TextStyle(
                                    color: Colors.tealAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 34.0,
                                  ),),


                              ],
                            ),
                        SizedBox(height: 30.0,),
                        Container(
                          width: double.infinity,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.tealAccent,
                                shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.5)))

                            ),
                            onPressed: (){},
                            child: Text("Reset",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal,
                              ),

                            ),



                          ),
                        ),
                          ],




                        ),
                      ),
                    ),
                  ),


                  



                ],
              ),
            ),





          ],

        ),

      ) ,






    );
  }
}





