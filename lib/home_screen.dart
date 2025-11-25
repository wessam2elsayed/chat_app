
import 'package:chat_app/model.dart';
import 'package:chat_app/special_circle_avatar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(        
         title: Row(children: [
         SpecialCircleAvatar(img: "assets/g1.jpg"),
         const SizedBox(width: 10,),
         Text("Chats",style: TextStyle(
          fontSize: 30,color: Colors.black,
          fontWeight: FontWeight.bold
         ),)
         ],),
         actions: [Icon(Icons.camera_alt_rounded),
         const SizedBox(width: 10,),
         Icon(Icons.edit_calendar)],               
      ),
      body:
      CustomScrollView(
        slivers: [
         SliverToBoxAdapter(
          child:  Container(height: 50,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color.fromARGB(255, 220, 220, 220),
          ),
          child: Row(children: [
            const SizedBox(width: 15,),
            Icon(Icons.search,
          color: Colors.blueGrey,),
          const SizedBox(width: 10,),
          Text("Search",style: TextStyle(
            fontSize: 20,
            color: Colors.blueGrey
          ),),
          ],
          ),        
         ),          
         ),
         SliverToBoxAdapter(
          child: SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: usres.length,
              shrinkWrap: true,
              itemBuilder: (context,index)=>
              Padding(
                padding: const EdgeInsets.all(10),
                child: SpecialCircleAvatar(img: usres[index].image)
              ),
              ),
          ),
         ),
        SliverToBoxAdapter(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: usres.length,
            itemBuilder: (context,index)=>ListTile(
              leading: CircleAvatar(radius: 20,
            backgroundImage: AssetImage(usres[index].image),),
            title: Text(usres[index].title),
            subtitle: Text(usres[index].subtitle),
            trailing: Icon(Icons.check_circle_outline),

            ))
          ),
        
        ],
      ),
      
    );

    
  }
}