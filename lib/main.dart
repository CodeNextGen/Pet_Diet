import 'package:flutter/material.dart';
import 'package:pet_diet/ui/themes.dart';
import 'package:pet_diet/ui/HomePage.dart';
import 'package:pet_diet/ui/onboarding/splash.dart';
void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeBloc _themeBloc;

  @override
  void initState() {
    super.initState();
    _themeBloc = ThemeBloc();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ThemeData>(
      initialData: _themeBloc.initialTheme().data,
      stream: _themeBloc.themeDataStream,
      builder: (BuildContext context, AsyncSnapshot<ThemeData> snapshot) {
        return MaterialApp(
          title: 'Theme Switcher',
          theme: snapshot.data,
          home: Splash(
            themeBloc: _themeBloc,
          ),
        );
      },
    );
  }
}