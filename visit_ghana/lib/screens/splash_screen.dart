import 'package:flutter/material.dart';

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
          height: 400,
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
      child:Padding(
        padding: const EdgeInsets.all(45.0),
        child: Row(
          children:[
         ElevatedButton(onPressed: (){}, child: const Text("Log in",style: TextStyle(color: Colors.white,fontSize: 18.0),),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            minimumSize: MaterialStateProperty.all<Size>(Size(100, 50)), // Set minimum size
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Add padding 
            ),
            ),
        
         ),
        Padding(padding: EdgeInsets.all(10)),
        ElevatedButton(
            onPressed: () {
        
            },
            child: const Text("Sign up",style: TextStyle(color: Colors.white,fontSize: 18.0)),
            style:  ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            minimumSize: MaterialStateProperty.all<Size>(Size(100, 50)), // Set minimum size
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Add padding 
            ),
            ),
        )
            
            
        
          ]
           
             ),
      ) );
  }
  Widget text(){
    return Container(
       padding: EdgeInsets.all(50.0),
      child: const Column(
        children:[
      Text("VISIT GHANA",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),),
      Text("Explore the rich culture of the \nfinest country in africa",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),)
      
      ]
      ,
   )
    );
  }
}