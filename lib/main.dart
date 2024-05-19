import 'package:flutter/material.dart';

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
    return Scaffold(
     
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          
          children: [
            Container(
              
              width: 100,
              height: 100,
              margin: EdgeInsets.fromLTRB(30, 50, 0, 0),
              padding: EdgeInsets.fromLTRB(15, 40, 0, 0),
              child: Text("WELCOME", style:TextStyle(fontWeight: FontWeight.bold, color: Colors.white)), color: Colors.red,
              ),
              Container(
              
              width: 100,
              height: 100,
              margin: EdgeInsets.fromLTRB(30, 50, 0, 0),
              padding: EdgeInsets.fromLTRB(15, 40, 0, 0),
              child: Text("WELCOME", style:TextStyle(fontWeight: FontWeight.bold, color: Colors.white)), color: Colors.red,
              ),
            
               Container(
              
              width: 100,
              height: 100,
              margin: EdgeInsets.fromLTRB(30, 50, 0, 0),
              padding: EdgeInsets.fromLTRB(15, 40, 0, 0),
              child: Text("WELCOME", style:TextStyle(fontWeight: FontWeight.bold, color: Colors.white)), color: Colors.red,
              ),
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