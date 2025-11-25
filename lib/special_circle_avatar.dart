import 'package:flutter/material.dart';

class SpecialCircleAvatar extends StatelessWidget {
  const SpecialCircleAvatar({super.key, required this.img});
  final String img;

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(radius: 25,
         backgroundColor: Colors.blue,
         child: CircleAvatar(radius: 20,  
         backgroundImage: AssetImage(img)),
         
         );
  }
}