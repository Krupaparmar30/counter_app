import 'package:counter_app/utils/homePage/chessBorad.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(chessApp());
}

class chessApp extends StatelessWidget {
  const chessApp({super.key});

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
        centerTitle: true,
        elevation: 10,
        shadowColor: Colors.black,
        leading: const Icon(Icons.menu_open_sharp),
        title: const Text(
          'chess borad',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: 340,
          width: 340,
          decoration: BoxDecoration(color: Colors.grey.shade100, boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 8,
                spreadRadius: 8,
                offset: Offset(0, 8))
          ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                RowPart1(),
                RowPart2(),
                RowPart1(),
                RowPart2(),
                RowPart1(),
                RowPart2(),
                RowPart1(),
                RowPart2(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row RowPart1() {
    return Row(
      children: [
        white1(),
        black1(),
        white1(),
        black1(),
        white1(),
        black1(),
        white1(),
        black1(),
      ],
    );
  }

  Row RowPart2() {
    return Row(
      children: [
        black1(),
        white1(),
        black1(),
        white1(),
        black1(),
        white1(),
        black1(),
        white1(),
      ],
    );
  }

  Container black1() {
    return Container(
      height: 40,
      width: 40,
      color: Colors.black87,
    );
  }

  Container white1() {
    return Container(
      height: 40,
      width: 40,
      color: Colors.white,
    );
  }
}
