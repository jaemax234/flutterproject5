// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

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
          home: Homepage(),

    );
  }
}


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int leftDice = 1;
  int rightDice =1;
  void ranDonre(){
    leftDice =Random().nextInt(6) +1;
              rightDice =Random().nextInt(6) +1;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.menu),color: Colors.blue, iconSize: 50, ),
        
        ],
        centerTitle: true,
        title:Text("DICE GAME", style: TextStyle( fontFamily: 'Pacifico', color: Colors.black),),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
         children:<Widget> [
          Expanded(child: TextButton(child: Image(image: AssetImage("assets/dice$leftDice.png"),  ), onPressed: () {
           setState(() {
               ranDonre();
           });
          },), ),
          Expanded(child: TextButton(child: Image.asset('assets/dice$rightDice.png'), onPressed: () {
           setState(() {
             ranDonre();
           });
          },) )
          
         ],),
      ) ,

  
    );
  }
}