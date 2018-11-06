import 'package:flutter/material.dart';
class Step2 extends StatefulWidget {
  final Function goToNextPage;
  Step2({Key key, this.goToNextPage}):super(key: key);

  @override
  _Step2State createState() => new _Step2State();
}

class _Step2State extends State<Step2> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
                child: InkWell(
                  onTap:()=> widget.goToNextPage(2),
                  child: Column(
                    children: [
                      Icon(Icons.pets, color: Colors.green[500]),
                      Center(
                          child: Text('Male',style: TextStyle(
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
                  onTap:()=> widget.goToNextPage(2),
                  child: Column(
                    children: [
                      Icon(Icons.pets, color: Colors.green[500]),
                      Center(
                          child: Text('Female',style: TextStyle(
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
