
import 'package:counter_app/utils/homePage/myCounter_app.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(counterApp());
}
class counterApp extends StatelessWidget {
  const counterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:HomePage(),
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

      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('counter App',style: TextStyle(color: Colors.white),),


      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          child: Text('$count',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),

        ),

      ),

      floatingActionButton: FloatingActionButton(

        backgroundColor: Colors.black87,
        onPressed: () {
          setState(() {
            count++;
          });
          print(count);
        },
        child: Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}
int count=0;

