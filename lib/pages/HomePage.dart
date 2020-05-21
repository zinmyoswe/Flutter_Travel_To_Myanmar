import 'package:flutter/material.dart';
import 'package:traveltomyanmar/Animation/FakeAnimation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
       body: SingleChildScrollView(

         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
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
                     FadeAnimation(1,Text("Travel to Myanmar", textAlign: TextAlign.center ,style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
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
             SizedBox(height: 30,),
             Container(
               padding: EdgeInsets.symmetric(horizontal: 20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   FadeAnimation(1,Text("Best Destination", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),)),
                   SizedBox(height: 20,),
                   FadeAnimation(1.4,Container(
                     height: 200,

                     child: ListView(
                       scrollDirection: Axis.horizontal,
                       children: <Widget>[
                         makeItem(image: 'assets/images/bagan.jpg', title: 'Bagan'),
                         makeItem(image: 'assets/images/a (4).jpg', title: 'Inly Lake'),
                         makeItem(image: 'assets/images/kalaw.jpg', title: 'Kalaw'),

                         makeItem(image: 'assets/images/yangon.jpg', title: 'Yangon'),
                         makeItem(image: 'assets/images/chaungtha.jpg', title: 'ChaungTha Beach'),
                         makeItem(image: 'assets/images/khakavorazi.jpg', title: 'Khakavorazi Mountain'),

                       ],
                     ),
                   )),
                   SizedBox(height: 30,),
                   FadeAnimation(1,Text("Popular Places In Myanmar", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),)),
                   SizedBox(height: 20,),
                   FadeAnimation(1.4,Container(
                     height: 200,

                     child: ListView(
                       scrollDirection: Axis.horizontal,
                       children: <Widget>[
                         makeItem(image: 'assets/images/m.jpg', title: 'NgweSaung Beach'),
                         makeItem(image: 'assets/images/a (9).jpg', title: 'Myeik'),
                         makeItem(image: 'assets/images/a (2).jpg', title: 'Pyin Oo Lwin Park'),
                         makeItem(image: 'assets/images/a (8).jpg', title: 'Myatheintan Pagoda'),
                         makeItem(image: 'assets/images/a (7).jpg', title: 'Mandalay Royal Palace'),
                         makeItem(image: 'assets/images/a (6).jpg', title: 'KyoneHtaw Waterfall'),
                         makeItem(image: 'assets/images/a (5).jpg', title: 'Kyitehteeyo Pagoda'),
                         makeItem(image: 'assets/images/a (3).jpg', title: 'Reh Love Lake'),
                         makeItem(image: 'assets/images/a (1).jpg', title: 'OoPain Bridge'),

                       ],
                     ),
                   )),
                   SizedBox(height: 80,),
                 ],
               ),
             )

           ],
         ),
       ),
    );
  }

  Widget makeItem({image, title}){
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(

        margin: EdgeInsets.only(right:20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.2),
                  ]
              )
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(title, style: TextStyle(color: Colors.white, fontSize: 16),),
          ),
        ),
      ),
    );
  }
}
