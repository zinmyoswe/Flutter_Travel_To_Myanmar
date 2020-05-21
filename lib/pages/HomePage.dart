import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
       body: Column(
         children: <Widget>[
           Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/cover2.jpg'),
                  fit: BoxFit.cover,
                )
              ),
             child: Container(
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                   begin: Alignment.bottomRight,
                   colors: [
                     Colors.black.withOpacity(.8),
                     Colors.black.withOpacity(.2),
                   ]
                 )
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: <Widget>[
                   Text("Travel to Myanmar", textAlign: TextAlign.center ,style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                   ),
                   SizedBox(height: 30,),
                   Container(
                     height: 50,
                     margin: EdgeInsets.symmetric(horizontal: 40),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50),
                       color: Colors.white,
                     ),
                   child: TextField(
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       prefixIcon: Icon(Icons.search, color: Colors.grey,),
                       hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                       hintText: "Search for cities, places ..."
                     ),
                   ),
                   ),
                   SizedBox(height: 30,),
                 ],
               ),
             ),
           ),
         ],
       ),
    );
  }
}
