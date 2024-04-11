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
            children: List.generate(box1.length, (index) =>box(index: box1[index]) ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                box1.add(box1.length + 1);
              });
            },
            child: Icon(
              Icons.add,
              color: Colors.blue.shade500,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                box1.removeAt(box1.length-1);
              });
            },
            child: Icon(
              Icons.remove,
              color: Colors.blue.shade500,
            ),
          ),
        ],
      ),
    );
  }

  List<int> box1 = [0];

  Padding box({required index}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: (index % 2 == 0)
                    ? Colors.pink.shade300
                    : Colors.pink.shade400),
            child: Center(
                child: Text(
              '$index',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ],
      ),
    );
  }
}
