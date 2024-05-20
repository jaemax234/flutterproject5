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
          title: "Coffee App",
          home: const Homepage(),

    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
     
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          
          children: [
            Center(
              child: CircleAvatar(backgroundImage:AssetImage("assets/download.jpg") , backgroundColor: Color.fromARGB(255, 0, 0, 0),
              radius: 75,
              ),
            ),
            Center(child: Text("John Maxwell",style: TextStyle(fontSize: 30, color: Colors.white,
            fontFamily:"Pacifico" , letterSpacing: 5,
            ),)),
            Center(child: Text("FOUNDER OF TEALBIT", style: TextStyle(fontFamily: "Roboto", color: Colors.white, fontSize: 20),),),
            Center(
              child: Card(
                color: Colors.white,
                child: Row(
                  children:<Widget> [
                    SizedBox(width: 20,),
                    Icon(Icons.phone, color: Color.fromARGB(255, 1, 126, 114), size: 20,),
                    SizedBox(width: 10,),
                    Text("+233 202791433", style: TextStyle(fontSize: 20, fontFamily: "OpenSans"),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 14,),
            Card(
              color: Colors.white,
              child: Row(children: [
              SizedBox(width: 20,),
              Icon(Icons.email, color: Color.fromARGB(255, 0, 128, 115), size: 20,),
              SizedBox(width: 10,),
              Text("maxwelldanso533@gamil.com", style: TextStyle(fontFamily:"OpenSans" , fontSize: 20,),)
                          ],),
            )
           
            

           /* Row(
              
              children: [
              Column(children: [
                Container(child: Text("Location", style: TextStyle(fontSize: 20 ,color: Colors.white, fontWeight: FontWeight.w100), ),margin: EdgeInsets.fromLTRB(0, 0, 100, 0),),
                Container( margin:EdgeInsets.fromLTRB(10, 0, 0, 0), child: Text("Accra, Greater Accra", style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),))
              ],),
               Container(child: CircleAvatar(child: Icon(Icons.abc), radius: 25,) , margin: EdgeInsets.fromLTRB(150, 0, 0, 0),) ,
            ],),
               
            Row(
              
              children: [
                Container(
                  
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.fromLTRB(30, 2, 0, 0),
                  padding: EdgeInsets.fromLTRB(15, 40, 0, 0),
                  child: Text("WELCOME", style:TextStyle(fontWeight: FontWeight.bold, color: Colors.white)), color: Colors.yellow,
                  ),
                  Container(
                  
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.fromLTRB(30, 2, 0, 0),
                  padding: EdgeInsets.fromLTRB(15, 40, 0, 0),
                  child: Text("WELCOME", style:TextStyle(fontWeight: FontWeight.bold, color: Colors.white)), color: Colors.yellow,
                  ),
                
                   Container(
                  
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.fromLTRB(30, 2, 0, 0),
                  padding: EdgeInsets.fromLTRB(15, 40, 0, 0),
                  child: Text("WELCOME", style:TextStyle(fontWeight: FontWeight.bold, color: Colors.white)), color: Colors.yellow,
                  ),
              ],
            ),*/
          ],
        ),
      )
      
       /*const Column(
        children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:<Widget> [
              Image(image: AssetImage("assets/download.jpg"), width: 200, height: 100,),
              
              Column(
                children: [
                  Text(
                    "John Maxwell", style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  Text(
                    "maxwelldanso533@gmail.com", 
                    style: TextStyle(color: Colors.white,fontSize: 12),
                    
                    )
                ],
              )
            ],
          ),
        ],
      ),*/


    );
  }
}