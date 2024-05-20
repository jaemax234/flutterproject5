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
    return const Scaffold(
     
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          
          children: [
            Center(
              child: CircleAvatar(backgroundImage:AssetImage("assets/download.jpg") , backgroundColor: Colors.white,
              radius: 75,
              ),
            ),
            Center(child: Text("John Maxwell",style: TextStyle(fontSize: 30, color: Colors.white,
            fontFamily:"Pacifico" ,
            ),)),
            Center(child: Text("FOUNDER OF TEALBIT", style: TextStyle(fontFamily: "Playfair", color: Colors.white, fontSize: 18),),)
            

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