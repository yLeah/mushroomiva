import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mushroomiva/ai.dart';
import 'package:mushroomiva/cookbook.dart';
import 'globals.dart' as globals;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mushroomiva',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: GoogleFonts.spectral().fontFamily,
      ),
      home: const MyHomePage(title: 'Mushroomiva'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              builder: (context) =>
                  const Cookbook(title: "Forager's Cookbook")));
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
