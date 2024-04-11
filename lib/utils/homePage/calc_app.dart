import 'package:counter_app/utils/homePage/myCounter_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myCounterApp());
}

class myCounterApp extends StatelessWidget {
  const myCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      appBar: AppBar(
        leading: const Icon(
          Icons.menu_open_sharp,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title:const Text(
          'Calc',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 80),
              child: Container(
                height: 80,
                width: 80,
                color: Colors.indigo.shade50,
                alignment: Alignment.center,
                child: Text(
                  '$count',
                  style: TextStyle(fontSize: 45,color: Colors.indigo.shade500
                  ),



                ),

              ),



            ),
            Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white,width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.indigo.shade200,
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: Offset(0,10),
                          ),
                        ],

                        color:Colors.indigo.shade500,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          '-2',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        count -= 2;
                      });
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white,width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.indigo.shade200,
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: Offset(0,10),
                          ),
                        ],
                        color: Colors.indigo.shade500,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          '+2',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        count += 2;
                      });
                    },
                  ),
                ],
              ),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(

                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white,width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.indigo.shade200,
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: Offset(0,10),
                          ),
                        ],
                        color: Colors.indigo.shade500,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text('-4', style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                        ),


                      ),

                    ),
                    onTap: () {
                      setState(() {
                        count -= 4;
                      });
                    }
                ),
                GestureDetector(

                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white,width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.indigo.shade200,
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: Offset(0,10),
                          ),
                        ],
                        color: Colors.indigo.shade500,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text('+4', style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                        ),


                      ),

                    ),
                    onTap: () {
                      setState(() {
                        count += 4;
                      });
                    }
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 80 ),


              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white,width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.indigo.shade200,
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: Offset(0,10),
                          ),
                        ],
                        color:Colors.indigo.shade500,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text('Clear',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                    ),
                    onTap: (){
                      setState(() {
                        count=0;
                      });

                    },
                  )
                ],
              ) ,
            ),

          ],



        ),


      ),

    );
  }
}

int count = 0;

