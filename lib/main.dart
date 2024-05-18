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
      appBar: AppBar( 
        title: Text("I am Poor", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 15, 71, 255),
        centerTitle: true,
        
      ),
      backgroundColor: Colors.white,
      body:  Container(
        child: Column(
          children: [
          Row(
              
              children:<Widget> [
                Image(image: AssetImage("assets/download.jpg"), width: 200, height: 100,),
                
                Column(
                  children: [
                    Text("John Maxwell"),
                    Text("maxwelldanso604@gmail.com")
                  ],
                )
              ],
            ),
          ],
        ),
      ),


    );
  }
}