// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black)
          ),
          title: "State Project",
          home: const Homepage(),

    );
  }
}
var leftDice =1;
class Homepage extends StatelessWidget {
  const Homepage({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.menu),color: Colors.red, iconSize: 50, ),
        
        ],
        centerTitle: true,
        title:Text("DICE GAME", style: TextStyle( fontFamily: 'Pacifico', color: Colors.red),),
      ),
      backgroundColor: Colors.red,
      body: Center(
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
         children:<Widget> [
          Expanded(child: TextButton(child: Image(image: AssetImage("assets/dice1.png"),  ), onPressed: () {
            
          },), ),
          Expanded(child: TextButton(child: Image.asset('assets/dice1.png'), onPressed: () {
            
          },) )
          
         ],),
      ) ,


    );
  }
}