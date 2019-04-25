import 'package:flutter/material.dart';
import 'package:flutter_app_bloc_pattern/src/ui/MovieList.dart';


//API key for MovieDB = 7c51bd951efa4ffd50b804fe904dae47
void main() => runApp(App());

class App extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: MovieList(),
    ),
    );
  }

}


