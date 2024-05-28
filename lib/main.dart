// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';
import 'package:english_words/english_words.dart';
import "package:audioplayers/audioplayers.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home:Homepage() ,
    theme: ThemeData(colorSchemeSeed: Colors.pink),
    title: "Xylophone App",

    );
  }
}


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void playSound (int noteNUmber)
  {
    AudioCache.instance = AudioCache(prefix: '');
            final player = AudioPlayer();
             player.play(AssetSource('assets/note$noteNUmber.wav'));
            }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

   backgroundColor: Colors.white,
   body: SafeArea(
     child:  Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
          RawMaterialButton(onPressed: (){
            playSound(1);
          } ,  fillColor: Colors.blue ,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text("NOTE 1", style: TextStyle(color: Colors.white, fontSize: 50)),
          ),
          
          ),
           RawMaterialButton(onPressed: ()async{
           playSound(2);
               
           }, 
           fillColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text("NOTE 2", style: TextStyle(color: Colors.white, fontSize: 50),),
            ),
           ),
          
            RawMaterialButton(onPressed: ()async{
            AudioCache.instance = AudioCache(prefix: '');
            final player = AudioPlayer();
            await player.play(AssetSource('assets/note3.wav'));
               
           }, 
           fillColor: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text("NOTE 3", style: TextStyle(color: Colors.white, fontSize: 50),),
            ),
           ),
            RawMaterialButton(onPressed: ()async{
            AudioCache.instance = AudioCache(prefix: '');
            final player = AudioPlayer();
            await player.play(AssetSource('assets/note4.wav'));
               
           }, 
           fillColor: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text("NOTE 4", style: TextStyle(color: Colors.white, fontSize: 50),),
            ),
           ),
            RawMaterialButton(onPressed: ()async{
            AudioCache.instance = AudioCache(prefix: '');
            final player = AudioPlayer();
            await player.play(AssetSource('assets/note5.wav'));
               
           }, 
           fillColor: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text("NOTE 5", style: TextStyle(color: Colors.white, fontSize: 50),),
            ),
           ),
            RawMaterialButton(onPressed: ()async{
            AudioCache.instance = AudioCache(prefix: '');
            final player = AudioPlayer();
            await player.play(AssetSource('assets/note6.wav'));
               
           }, 
           fillColor: Colors.purple,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text("NOTE 6", style: TextStyle(color: Colors.white, fontSize: 50),),
            ),
           ),
            RawMaterialButton(onPressed: ()async{
            AudioCache.instance = AudioCache(prefix: '');
            final player = AudioPlayer();
            await player.play(AssetSource('assets/note7.wav'));
               
           }, 
            fillColor: Colors.orange,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text("NOTE 7", style: TextStyle(color: Colors.white, fontSize: 50),),
            ),
           ),
         ],
       ),
     ),
   ),

    );
  }
}