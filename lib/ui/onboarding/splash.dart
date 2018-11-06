import 'package:flutter/material.dart';
import 'package:pet_diet/ui/themes.dart';
import 'package:pet_diet/ui/HomePage.dart';
import 'package:pet_diet/ui/onboarding/stepper.dart';

class Splash extends StatefulWidget {
  final ThemeBloc themeBloc;
  Splash({Key key, this.themeBloc}) : super(key: key);
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {

  void goToNextPage(){
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Steps(
          themeBloc: widget.themeBloc,
        )));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash',
      home: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child:Padding(
          padding: const EdgeInsets.fromLTRB(10.00,10.0,10.00,10.00),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.fromLTRB(10.00,10.0,10.00,10.00),
                  child: Text("PetCy",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,fontSize: 32.00,
                      fontFamily:'sans',
                      fontWeight: FontWeight.bold
                    )
                )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.00,10.0,10.00,10.00),
                  child:Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white70,fontSize: 20.00,
                          fontFamily:'sans-serif',
                          fontWeight: FontWeight.w400
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.00,10.0,10.00,10.00),
                  child: RaisedButton(
                    padding: const EdgeInsets.all(16.0),
                    textColor:Theme.of(context).primaryColor,
                    color: Colors.white,
                    onPressed: goToNextPage,
                    child: new Text("Cool, Lets Go"), shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                  ),

                )
            ],
          ),
    )
    )
      )
    );
  }
}
