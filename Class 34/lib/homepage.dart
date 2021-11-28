import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var index = 0;
  var list = [
    const MainPage1(),
    const MainPage2(),
    const MainPage3(),
    const MainPage4()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.greenAccent,
      //  bottomNavigationBar: BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.green,
        showSelectedLabels: false,
        // currentIndex: 2,
        // selectedItemColor: Colors.black,
        unselectedItemColor: Colors.lightBlue,
        fixedColor: Colors.green,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.greenAccent),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        ],
        currentIndex: index,
        onTap: (i) {
          setState(() {
            index = i;
          });
        },
      ),
      body: list[index],
    );
  }
}

class MainPage1 extends StatelessWidget {
  const MainPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      color: Colors.yellow,
      child: const Center(
        child: Text("Hamid4"),
      ),
    );
  }
}

class MainPage2 extends StatelessWidget {
  const MainPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text("Hamid4"),
      ),
    );
  }
}

class MainPage3 extends StatelessWidget {
  const MainPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      color: Colors.grey,
      child: const Center(
        child: Text("Hamid4"),
      ),
    );
  }
}

class MainPage4 extends StatelessWidget {
  const MainPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text("Hamid4"),
      ),
    );
  }
}