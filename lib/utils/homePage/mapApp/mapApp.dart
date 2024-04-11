import 'package:flutter/material.dart';
import 'package:counter_app/utils/homePage/mapApp/mapApp.dart';

void main() {
  runApp(mapApp());
}

class mapApp extends StatelessWidget {
  const mapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading:const Icon(
            Icons.menu_open_sharp,
            color: Colors.white,
          ),
          centerTitle: true,
          title: const Text(
            'Map',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        body: Align(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.blue.shade50,
            child: SingleChildScrollView(

              child: Column(


                children:

                List.generate(mapicon1.length, (index) => mapAppK(name : mapicon1[index]['name'],icon: mapicon1[index]['icon'])),
              ),
            ),
          ),
        )
    );
  }


}
List mapicon1 = [
  {'name' :'Exit','icon' : Icons.exit_to_app},
  {'name' :'Play','icon' : Icons.play_arrow},
  {'name' :'Pause','icon' : Icons.pause},
  {'name' :'Stop', 'icon': Icons.stop},
  {'name' :'Close','icon' : Icons.close},
  {'name' :'Delete','icon' : Icons.delete},
  {'name' :'E-mail','icon' : Icons.mail},
  {'name' :'Setting','icon' : Icons.settings},
  {'name' :'Home','icon' : Icons.home},
];




Container mapAppK({required String name,required IconData icon }) {
  return Container(
    height: 80,
    width: double.infinity,
    color: Colors.white,


    margin: EdgeInsets.only(top: 10, bottom: 10, left: 0, right: 0),
    child:  Padding(

      padding:  EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style:
            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Icon(icon,
            size: 22,),

        ],
      ),
    ),
  );
}