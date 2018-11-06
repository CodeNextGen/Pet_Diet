import 'package:flutter/material.dart';
class Step3 extends StatefulWidget {
  final Function goToNextPage;
  Step3({Key key, this.goToNextPage}):super(key: key);

  @override
  _Step3State createState() => new _Step3State();
}

class _Step3State extends State<Step3> {

  var  myController=null;
  int age=2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myController = TextEditingController();
    myController.addListener(_setAge);
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myController.dispose();

    super.dispose();
  }

  _setAge() {
    int val = int.tryParse(myController.text) ?? age;
    setState(() {
        this.age=val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
        Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: myController,

        )),
        Padding(
          padding: const EdgeInsets.fromLTRB(2.00,2.0,2.00,2.00),
          child: RaisedButton(
              padding: const EdgeInsets.all(16.0),
              textColor:Colors.white,
              color: Theme.of(context).primaryColor,
              onPressed:()=> widget.goToNextPage(3),
              child: new Text("Next"), shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
          ),

        )
          ],
        ),
      ),
    );
  }
}
