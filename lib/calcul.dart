

import 'package:flutter/material.dart';

class Cal extends StatefulWidget {
  @override
  _CalState createState() => _CalState();
}

class _CalState extends State<Cal> {
  int sum=0;
  int add=0;
  int mul=0;
  int div=0;
  int result=0;



  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: num1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                    hintText: "Num 1",
                  ),

                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: num2,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: "Num 2",
                  ),

                ),

                SizedBox(
                  height: 10.0,
                ),

                GestureDetector(
                  onTap: () {
                    // body: Regist();
                  },

                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blueAccent,
                    ),
                    height: 50.0,
                    width: double.infinity,
                    child: Center(
                      child: Text(result.toString(),
                          //textAlign:TextAlign.center
                          style: TextStyle(fontSize: 23.0)),
                    ),
                  ),

                ),




                SizedBox(
                  height: 10.0,
                ),


                FlatButton(

                  onPressed: () {
                    var nm1=int.parse(num1.text);
                    var nm2=int.parse(num2.text);

                    setState(() {
                      sum=(nm1+nm2) as int;
                     result=sum;
                     print(result);

                    });

                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red,
                    ),
                    height: 50.0,
                    width: double.infinity,
                    child: Center(
                      child: Text("ADD",
                          //textAlign:TextAlign.center
                          style: TextStyle(fontSize: 23.0)),
                    ),
                  ),

                ),

                SizedBox(
                  height: 10.0,

                ),


                FlatButton(

                  onPressed: () {
                    var nm1=int.parse(num1.text);
                    var nm2=int.parse(num2.text);

                    setState(() {
                      sum=(nm1-nm2) as int;
                      result=sum;
                      print(result);

                    });

                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red,
                    ),
                    height: 50.0,
                    width: double.infinity,
                    child: Center(
                      child: Text("SUB",
                          //textAlign:TextAlign.center
                          style: TextStyle(fontSize: 23.0)),
                    ),
                  ),

                ),
                SizedBox(
                  height: 10.0,
                ),
                FlatButton(

                  onPressed: () {
                    var nm1=int.parse(num1.text);
                    var nm2=int.parse(num2.text);

                    setState(() {
                      sum=(nm1*nm2) as int;
                      result=sum;
                      print(result);

                    });

                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red,
                    ),
                    height: 50.0,
                    width: double.infinity,
                    child: Center(
                      child: Text("MUL",
                          //textAlign:TextAlign.center
                          style: TextStyle(fontSize: 23.0)),
                    ),
                  ),

                ),
                SizedBox(
                  height: 10.0,
                ),

                FlatButton(

                  onPressed: () {
                    var nm1=int.parse(num1.text);
                    var nm2=int.parse(num2.text);

                    setState(() {
                      sum=(nm1~/nm2) as int;
                      result=sum;
                      print(result);

                    });

                  },

                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red,
                    ),
                    height: 50.0,
                    width: double.infinity,
                    child: Center(
                      child: Text("DIV",
                          //textAlign:TextAlign.center
                          style: TextStyle(fontSize: 23.0)),
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
