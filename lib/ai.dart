import 'package:flutter/material.dart';
import 'package:mushroomiva/cookbook.dart';
import 'package:mushroomiva/main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
import 'dart:io';
import 'dart:async';
import 'globals.dart' as globals;

class AI extends StatefulWidget {
  const AI({super.key, required this.title});
  final String title;
  @override
  State<AI> createState() => _AIPageState();
}

class _AIPageState extends State<AI> {
  PickedFile? _image;
  bool _loading = false;
  List<dynamic>? _outputs;
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _loading = true;

    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: "assets/model_unquant.tflite",
      labels: "assets/labels.txt",
    );
  }

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

  classifyImage(image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 2,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
      _loading = false;
      _outputs = output;
    });
  }

  Future openCamera() async {
    var image = await _picker.getImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  Future openGallery() async {
    var picture = await _picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = picture;
    });
    classifyImage(picture);
  }

  Future pickImage() async {
    var image = await _picker.getImage(source: ImageSource.gallery);
    if (image == null) return null;
    setState(() {
      _loading = true;
      _image = image;
    });
    classifyImage(image);
  }

  Future<void> _optiondialogbox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.brown,
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    onTap: openCamera,
                    child: const Text(
                      "Take a Picture",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(10.0)),
                  GestureDetector(
                    onTap: openGallery,
                    child: const Text(
                      "Select image ",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
      ),
      body: _loading
          ? Container(
              alignment: Alignment.center,
              child: const CircularProgressIndicator(),
            )
          : SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _image == null ? Container() : Image.file(File(_image!.path)),
                  const SizedBox(
                    height: 20,
                  ),
                  _outputs != null
                      ? Text(
                          '${_outputs![0]["label"]}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        )
                      : Container()
                ],
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _optiondialogbox,
        backgroundColor: Colors.brown,
        child: const Icon(Icons.image),
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
