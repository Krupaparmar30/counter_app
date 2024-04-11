import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iconseditPage extends StatefulWidget {
  const iconseditPage({super.key});

  @override
  State<iconseditPage> createState() => _iconseditPageState();
}

class _iconseditPageState extends State<iconseditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.menu_open_sharp),
        title: Text(
          'Icons Editer',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        shadowColor: Colors.black87,
        elevation: 10,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade400,
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0,5))
                    ]
                ),
                child: Icon(
                  selectIcon,
                  color: selectColor,
                  size: 48,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 2,left: 2),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300
                    ,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:const  Center(
                      child: Text(
                    'Select Color',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
                ),
              ),
        
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    children: List.generate(
                      color.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectColor = color[index];
                          });
                        },
                        child: box1(color: color[index]),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 2,left: 2),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:const  Center(
                      child: Text(
                        'Select Icon',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      )),
                ),
              ),
//TODO ICONS
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    children: List.generate(
                      color.length,
                          (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectIcon = icon[index];
                          });
                        },
                        child: box4(icon: icon[index]),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

List<Color> color = [
  Colors.teal,
  Colors.pink,
  Colors.purple,
  Colors.red,
  Colors.orange,
  Colors.cyan,
  Colors.lightGreenAccent,
];
List<IconData> icon=[

  Icons.add,
  Icons.account_circle_outlined,
  Icons.access_alarms_outlined,
  Icons.account_tree_rounded,
  Icons.mark_email_read,
  Icons.menu,
  Icons.cabin,





];



//Select color valu container
Container box2()
{
  return Container(
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(10),
    ),
    child:const  Center(
        child: Text(
          'Select Color',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        )),
  );
}


//TODO=color change thay te valu container -----main(1)
Padding box1({required  color}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade400,
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0,5))
          ]
      ),


    ),

  );
}
//TODO ICON change thay te valu container -----main(2)
Padding box4({required IconData icon}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade400,
          spreadRadius: 2,
          blurRadius: 2,
          offset: Offset(0,5))
        ]
      ),
      child: Icon(
        icon,
        size: 30,
      ),
    ),

  );
}


//Select ICON valu container

Container box3()
{
  return Container(
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.grey.shade500,
      borderRadius: BorderRadius.circular(10),
    ),
    child:const  Center(
        child: Text(
          'Select Icon',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        )),
  );
}













Color selectColor = Colors.black;

IconData selectIcon=Icons.arrow_forward_ios;