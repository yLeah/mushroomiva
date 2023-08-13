import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mushroomiva/ai.dart';
import 'package:mushroomiva/cookbook.dart';
import 'package:turn_page_transition/turn_page_transition.dart';
import 'globals.dart' as globals;

final List<Widget> pages = [
  Container(
      color: globals.taupe,
      child: Center(
          child: Column(children: [
        Image.asset('assets/icon.png'),
        const Text("Mushroomiva's", style: TextStyle(fontSize: 30)),
        const Text("Encyclopedia of", style: TextStyle(fontSize: 30)),
        const Text("Edible Mushrooms", style: TextStyle(fontSize: 30))
      ]))), //Cover
  Container(
      color: Colors.white,
      child: Center(
          child: Column(children: [
        Image.asset(''),
        const Text("Chanterelle", style: TextStyle(fontSize: 30)),
        const Text("Cantharellus cibarius",
            style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
        const Text(
            "These mushrooms are typically found in moist, woodland environments, especially near coniferous trees, oak trees, and birch trees. They form mutually beneficial relationships with these trees through mycorrhizal associations. Golden Chanterelles can be found in both temperate and boreal forests, appearing during late summer and autumn.",
            style: TextStyle(fontSize: 18))
      ]))), //Chanterelle
  Container(
      color: Colors.white,
      child: Center(
          child: Column(children: [
        Image.asset(''),
        const Text("King Trumpet Mushroom", style: TextStyle(fontSize: 30)),
        const Text("Pleurotus eryngii",
            style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
        const Text(
            "Originally native to the Mediterranean region, these mushrooms thrive in a variety of climates and are often grown indoors on a substrate made of straw or sawdust. They are known for their adaptability and can tolerate different temperatures, making them suitable for cultivation throughout the year. However, they are also found in the wild, primarily in grasslands and woodlands, growing in clusters or solitary form.",
            style: TextStyle(fontSize: 18))
      ]))), //King Trumpet Mushroom
  Container(
      color: Colors.white,
      child: Center(
          child: Column(children: [
        Image.asset(''),
        const Text("True Morels", style: TextStyle(fontSize: 30)),
        const Text("Morchella spp.",
            style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
        const Text(
            "Morels are known to grow in diverse habitats, including forests, woodlands, grasslands, and even disturbed areas. They often emerge in the spring, following a period of rain and warm weather. True Morels are commonly found in North America, Europe, and parts of Asia. They have a mycorrhizal relationship with trees, forming a symbiotic association where the fungi and the host tree mutually benefit from each other.",
            style: TextStyle(fontSize: 18))
      ]))), //True Morels
  Container(
      color: Colors.white,
      child: Center(
          child: Column(children: [
        Image.asset(''),
        const Text("Lion's Mane", style: TextStyle(fontSize: 30)),
        const Text("Hericium erinaceus",
            style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
        const Text(
            "Lion's Mane mushrooms are typically found growing on decaying or dead hardwood trees, such as oak, beech, maple, or walnut. They are native to North America, Europe, and parts of Asia, but can also be cultivated indoors on substrates made from sawdust or wood chips. Cultivation methods have made Lion's Mane mushrooms more accessible and readily available to consumers.",
            style: TextStyle(fontSize: 18))
      ]))), //Lion's Mane
  Container(
      color: Colors.white,
      child: Center(
          child: Column(children: [
        Image.asset(''),
        const Text("Penny Bun", style: TextStyle(fontSize: 30)),
        const Text("Boletus edulis",
            style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
        const Text(
            "Penny Bun mushrooms are found in a wide range of habitats, including deciduous and coniferous forests, often growing in association with certain tree species like oak, beech, pine, or birch. They have a mycorrhizal relationship with these trees, forming a mutually beneficial partnership where the fungus aids in the tree's nutrient absorption while receiving carbohydrates in return. Penny Bun mushrooms can be found in various regions across Europe, North America, and Asia, and they are highly regarded in many culinary traditions around the world.",
            style: TextStyle(fontSize: 18))
      ]))), //Penny Bun
  Container(
      color: Colors.white,
      child: Center(
          child: Column(children: [
        Image.asset(''),
        const Text("Hen-Of-The-Wood", style: TextStyle(fontSize: 30)),
        const Text("Grifola erondosa",
            style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
        const Text(
            "Hen-of-the-Wood mushrooms are typically found growing at the base of hardwood trees, such as oak, maple, and beech, in temperate forests of North America, Europe, and Asia. They are primarily a woodland species and often appear in the fall, although they can occasionally be found at other times of the year. These mushrooms form a mycorrhizal relationship with their host trees, exchanging nutrients and forming a symbiotic partnership.",
            style: TextStyle(fontSize: 18))
      ]))), //Hen-Of-The-Wood
  Container(
      color: Colors.white,
      child: Center(
          child: Column(children: [
        Image.asset(''),
        const Text("Oyster Mushroom", style: TextStyle(fontSize: 30)),
        const Text("Pleurotus ostreatus",
            style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
        const Text(
            "Oyster mushrooms have a wide distribution and can be found growing naturally in various parts of the world. They are known to flourish on dead or decaying organic matter, particularly hardwood trees, although they can also grow on straw, sawdust, or agricultural waste. Oyster mushrooms are not mycorrhizal, meaning they do not form symbiotic relationships with host trees. This characteristic makes them relatively easy to cultivate and commercially produce.",
            style: TextStyle(fontSize: 18))
      ]))), //Pleurotus Ostreatus
  Container(
      color: Colors.white,
      child: Center(
          child: Column(children: [
        Image.asset(''),
        const Text("Shiitake", style: TextStyle(fontSize: 30)),
        const Text("Lentinula edodes",
            style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
        const Text(
            "Shiitake mushrooms are native to East Asia and are particularly associated with Japanese and Chinese culinary traditions. While they can be found growing in the wild on decaying hardwood logs, they are also extensively cultivated on artificial substrates. Shiitake cultivation involves inoculating hardwood logs or sawdust blocks with the mushroom spawn, providing optimal conditions for growth, and controlling factors such as temperature, humidity, and light.",
            style: TextStyle(fontSize: 18))
      ]))), //Shiitake
  Container(
      color: Colors.white,
      child: Center(
          child: Column(children: [
        Image.asset(''),
        const Text("Portobello", style: TextStyle(fontSize: 30)),
        const Text("Agaricus bisporus",
            style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
        const Text(
            "Portobello mushrooms are typically cultivated rather than found in the wild. They are a cultivated variety of the common white button mushroom, selected for their larger size and more robust flavor. Portobellos are grown in a controlled environment, often on composted substrates, under specific conditions of temperature, humidity, and light. The cultivation process allows for consistent production and availability throughout the year.",
            style: TextStyle(fontSize: 18))
      ]))), //Agaricus Bisporus
  Container(color: globals.taupe), //Back Cover
];

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
    final controller = TurnPageController();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
      ),
      body: TurnPageView.builder(
        controller: controller,
        itemCount: 11,
        itemBuilder: (context, index) => pages[index],
        animationTransitionPoint: 0.5,
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
