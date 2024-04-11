import 'package:counter_app/utils/homePage/icons.dart';
import 'package:counter_app/utils/homePage/DymanicList.dart';
import 'package:counter_app/utils/homePage/iconsediter.dart';
import 'package:counter_app/utils/homePage/krupa.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:counter_app/utils/homePage/chessBorad.dart';
import 'package:counter_app/utils/homePage/mapApp/mapApp.dart';
void main()
{
  runApp(iconsEddApp());
}

class iconsEddApp extends StatelessWidget {
  const iconsEddApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeScreen(),
    );
  }
}
