import 'package:flutter/material.dart';
import 'package:pet_diet/ui/themes.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pet_diet/ui/onboarding/steps/Step1.dart';
import 'package:pet_diet/ui/onboarding/steps/Step2.dart';
import 'package:pet_diet/ui/onboarding/steps/Step3.dart';
import 'package:pet_diet/ui/onboarding/steps/Step4.dart';
import 'package:pet_diet/ui/HomePage.dart';
class Steps extends StatefulWidget {

  final ThemeBloc themeBloc;
  Steps({Key key, this.themeBloc}) : super(key: key);
  @override
  _StepsState createState() => new _StepsState();
}

class _StepsState extends State<Steps> {

  PageController controller;
  int _page = 0;
  Widget step_1,step_2,step_3,step_4;

  final input = ["What type of pet you have ?"," is it Male or Female","How Old Max is ?","How would describe Max's Body Condition"];
  final percnetage=[0.0,0.2,0.5,0.8];


  @override
  void initState() {
    super.initState();
    controller = new PageController();
    step_1=Step1(goToNextPage:goToNextPage);
    step_2=Step2(goToNextPage:goToNextPage);
    step_3=Step3(goToNextPage:goToNextPage);
    step_4=Step4(goToHomePage:goToHomePage);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

   void goToNextPage(int position){
    controller.jumpToPage(position);
  }

  void onPageChanged(int page){
    setState((){
      this._page = page;
    });
  }

  void goToHomePage(){
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomePage(
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
                      SizedBox(
                        height: 60.00,
                      ),

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
                        padding: const EdgeInsets.fromLTRB(10.00,10.0,10.00,20.00),
                        child:Text("Question ${_page+1} of ${input.length}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white70,fontSize: 20.00,
                                fontFamily:'sans-serif',
                                fontWeight: FontWeight.w400
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.00,10.0,10.00,20.00),
                        child:Text(input[this._page],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,fontSize: 20.00,
                                fontFamily:'sans-serif',
                                fontWeight: FontWeight.w700
                            )
                        ),
                      ),
                      Expanded(
                        child: Card(
                          child: PageView(
                            physics: NeverScrollableScrollPhysics(),
                            children: <Widget>[
                              step_1,
                              step_2,
                              step_3,
                              step_4
                            ],
                            controller: controller,
                            onPageChanged: onPageChanged,
                          ),
                        )
                      ),

                      new LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width-20,
                        lineHeight: 8.0,
                        percent: percnetage[_page],
                        progressColor: Colors.lightGreen,
                      )

                    ],
                  ),
                )
            )
        )
    );
  }






}