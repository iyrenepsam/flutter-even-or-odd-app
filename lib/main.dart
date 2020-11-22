



import 'package:flutter/material.dart';

void main()=>runApp(EvenOrOdd());

class EvenOrOdd extends StatefulWidget {
  @override
  _EvenOrOddState createState() => _EvenOrOddState();
}

class _EvenOrOddState extends State<EvenOrOdd> {
  TextEditingController getNumber1=TextEditingController();
  String checkresult="";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("EVEN OR ODD CHECKER APP"),
        ),
        body: Container(
          padding: EdgeInsets.all(50.0),
          child: Column(
            children: [
              TextField(
                controller: getNumber1,
                decoration: InputDecoration(
                  hintText: "ENTER A NUMBER TO CHECK",
                  border: OutlineInputBorder()
                ),
              ),
              RaisedButton(
                color: Colors.amber,
                onPressed: (){
                double getNum1=double.parse(getNumber1.text);

                setState(() {
                  if(getNum1%2==0)
                    {
                      checkresult="Even number";
                    }
                  else
                    {
                      checkresult="Odd number";
                    }

                });

                style:TextStyle(fontSize: 50);
              },
              child: Text("CHECK"),
              ),
              Text(checkresult),

            ],
          ),
        ),
      ),
    );
  }
}
