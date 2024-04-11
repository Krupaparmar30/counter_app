import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        centerTitle: true,
        title:const Text('Iocns',
          style: TextStyle(color: Colors.black87,
              fontWeight: FontWeight.bold,

              fontSize: 18),),
        shadowColor: Colors.black87,
      elevation: 10,
      ),
      body: Align(
        alignment: Alignment.center,

        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),


            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,

                    child:Row(
                      children: List.generate(
                          5, (index) => containerRow(icon: icons[index]),

                      ),



                    ),
                  ),
                  SingleChildScrollView(

                    scrollDirection: Axis.horizontal,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: List.generate(
                          5, (index) => containerRow(icon: icones2[index]),

                        ),



                      ),
                    ),
                  ),
                  SingleChildScrollView(

                    scrollDirection: Axis.horizontal,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: List.generate(
                          5, (index) => containerRow(icon: icones[index]),

                        ),



                      ),
                    ),
                  ),
                  SingleChildScrollView(

                    scrollDirection: Axis.horizontal,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: List.generate(
                          5, (index) => containerRow(icon: icones2[index]),

                        ),



                      ),
                    ),
                  ),
                  SingleChildScrollView(

                    scrollDirection: Axis.horizontal,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: List.generate(
                          5, (index) => containerRow(icon: icones[index]),

                        ),



                      ),
                    ),
                  ),
                  SingleChildScrollView(

                    scrollDirection: Axis.horizontal,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: List.generate(
                          5, (index) => containerRow(icon: icones1[index]),

                        ),



                      ),
                    ),
                  ),
                  SingleChildScrollView(

                    scrollDirection: Axis.horizontal,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: List.generate(
                          5, (index) => containerRow(icon: icones2[index]),

                        ),



                      ),
                    ),
                  ),



                ],
              ),
            ),

          ),

        ),
      ),
    );
  }

  List icons=[
    Icons.add,
    Icons.settings_backup_restore,
    Icons.arrow_back_ios,
    Icons.arrow_forward_ios,
    Icons.key,

    Icons.alarm,
    Icons.key,



  ];

  List icones=[
    Icons.verified,
    Icons.home,
    Icons.menu,
    Icons.key,

    Icons.arrow_back_ios,
    Icons.arrow_forward_ios,

  ];


  List icones1=[
    Icons.verified,
  Icons.account_tree_rounded,

    Icons.alarm,
    Icons.arrow_back_ios,
    Icons.arrow_forward_ios,

  ];

  List icones2=[
  Icons.dark_mode_outlined,
    Icons.account_tree_rounded,
    Icons.key,
    Icons.menu,

    Icons.arrow_back_ios,
    Icons.arrow_forward_ios,

  ];















  Container containerRow({required IconData icon}) {
    return Container(
      height: 90,
      width: 90,
      padding: EdgeInsets.only(right: 5,left: 5,),

      decoration: BoxDecoration(

        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(0,8),
          ),
        ],
      ),
      child: Icon(
        icon,
        color: Colors.black87,
        size: 38,
      ),
    );
  }
}
