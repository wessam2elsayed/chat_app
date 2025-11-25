import 'package:chat_app/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat_bubble,size: 100,
            color: Colors.white,),
            Text("Welcome to chat app",
            style: TextStyle(fontSize: 30,
            color: Colors.white),),
            IconButton(onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=> HomeScreen()));
            },
             icon: Icon(Icons.navigate_next,
            size: 50,color: Colors.white,))
          ],
        ),
      ),
    );
  }
}