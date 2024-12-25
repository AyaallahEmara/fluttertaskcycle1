import 'package:flutter/material.dart';
import 'package:fluttertaskcycle1/screens/home_screen.dart';

void main(){
  runApp(const FlutterTaskCycle());
}
class FlutterTaskCycle extends StatelessWidget {
  const FlutterTaskCycle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.id : (context) => HomeScreen(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}
