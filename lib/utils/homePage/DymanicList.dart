import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.menu_open_sharp,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        title: Text(
          'Dynamic App',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: SingleChildScrollView(
        child: Align(
          
          child: Column(
            children: [
              box(),
              box(),
              box(),
              box(),
              box(),
              box(),
              box(),
        
        
        
        
        
            ],
          ),
        ),
      ),
        floatingActionButton: Row(

          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(onPressed: (){}
            ,child: Icon(Icons.add,color: Colors.blue.shade500,),),

         SizedBox(width: 20,),


    FloatingActionButton(onPressed: (){}
    ,child: Icon(Icons.remove,color: Colors.blue.shade500,),),

    ],
        ),
    );
  }
  List box1=[
    0
  ];

  Padding box() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.pink,
              ),
              child: Center(child: Text('1',style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),)),



            )
            ,

          ],

        ),


      );

  }
}
