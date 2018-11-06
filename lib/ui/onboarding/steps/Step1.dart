import 'package:flutter/material.dart';
class Step1 extends StatefulWidget {
  final Function goToNextPage;
  Step1({Key key, this.goToNextPage}):super(key: key);

  @override
  _Step1State createState() => new _Step1State();
}

class _Step1State extends State<Step1> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
                child: InkWell(
                  onTap:()=> widget.goToNextPage(1),
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
                  onTap:()=> widget.goToNextPage(1),
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
