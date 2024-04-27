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
    await Future.delayed(const Duration(milliseconds: 10000), () {} );
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MyApp()),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
         decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage("assets/images/flag.jpg"),
    fit: BoxFit.cover,
    ),
),
          child: const Text("VISIT GHANA",style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold, color: Colors.white),),
        ),
      ),
    );
  }
}