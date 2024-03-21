import 'package:flutter/material.dart';
// import 'package:visit_ghana/main.dart';
import 'package:visit_ghana/screens/home_screen.dart';

class Splash extends StatefulWidget{
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }


  _navigatetohome()async{
    await Future.delayed(const Duration(milliseconds: 2000), () {} );
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MyApp()),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: const Text("Splash Screen",style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold ),),
        ),
      ),
    );
  }
}