import 'package:flutter/material.dart';
import 'package:mushroomiva/cookbook.dart';
import 'package:mushroomiva/main.dart';
import 'globals.dart' as globals;

class AI extends StatefulWidget {
  const AI({super.key, required this.title});
  final String title;
  @override
  State<AI> createState() => _AIPageState();
}

class _AIPageState extends State<AI> {
  void _onItemTapped(int index) {
    globals.selectedIndex = index;
    if (globals.selectedIndex == 0) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const AI(title: 'Mushroom Identifying A.I.')));
    } else if (globals.selectedIndex == 2) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const Cookbook(
                    title: "Forager's Cookbook",
                  )));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const MyHomePage(
                    title: 'Mushroomiva',
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'A.I.',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Cookbook',
          ),
        ],
        currentIndex: globals.selectedIndex,
        selectedItemColor: Colors.brown,
        onTap: _onItemTapped,
        elevation: 0,
      ),
    );
  }
}
