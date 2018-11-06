import 'package:flutter/material.dart';
class Step4 extends StatefulWidget {
  final Function goToHomePage;
  Step4({Key key, this.goToHomePage}):super(key: key);

  @override
  _Step4State createState() => new _Step4State();
}

class _Step4State extends State<Step4> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
                child: InkWell(
                  onTap:()=> widget.goToHomePage(),
                  child: Column(
                    children: [
                      Icon(Icons.pets, color: Colors.green[500]),
                      Center(
                          child: Text('Cat',style: TextStyle(
                              color: Colors.black,fontSize: 20.00,
                              fontFamily:'sans-serif',
                              fontWeight: FontWeight.bold
                          ),
                          )
                      ),
                    ],
                  ),

                )
            ),
            Divider(),
            Center(
                child: InkWell(
                  onTap:()=> widget.goToHomePage(),
                  child: Column(
                    children: [
                      Icon(Icons.pets, color: Colors.green[500]),
                      Center(
                          child: Text('Dog',style: TextStyle(
                              color: Colors.black,fontSize: 20.00,
                              fontFamily:'sans-serif',
                              fontWeight: FontWeight.bold
                          ),
                          )
                      ),
                    ],
                  ),

                )
            )
          ],
        ),
      ),
    );
  }
}
