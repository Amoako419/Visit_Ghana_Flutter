import 'package:flutter/material.dart';
import 'package:visit_ghana/screens/Firstpage.dart';
// import 'package:visit_ghana/main.dart';


class Splash extends StatefulWidget{
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  // void initState(){
  //   super.initState();
  //   _navigatetohome();
  // }


  // _navigatetohome()async{
  //   await Future.delayed(const Duration(milliseconds: 8000), () {} );
  //   // ignore: use_build_context_synchronously
  //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const FirstPage()),);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // width: 500,
          // height: 400,
          child: Column(
            children: [_image(),
            text(),
            _login()
            ],
          )
        ),
      )
    ;
  }
  Widget _image(){
    return Container(
         width: 500,
          height: 300,
          decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage("assets/images/flag.jpg"),
    fit: BoxFit.cover
    ),
),
    );
  }

  Widget _login(){
    return Container(
    
      child:Column(
        children:[
       ElevatedButton(onPressed: (){}, child: const Text("Log in",style: TextStyle(color: Colors.white),),
       style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
       ),
      ElevatedButton(
    onPressed: () {
    // Handle button press
    },
    child: const Text("Sign up",style: TextStyle(color: Colors.white)),
    style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),// Use MaterialStateProperty for dynamic styling
    
    ),
)
        ]
   
     ) );
  }
  Widget text(){
    return Container(
      child: Text("VISIT\nGHANA",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
    padding: EdgeInsets.all(30.0),
    );
  }
}