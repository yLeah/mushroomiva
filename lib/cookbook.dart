import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cookbook extends StatelessWidget {
  const Cookbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forager's Cookbook",
            style: TextStyle(
              fontStyle: GoogleFonts.robotoMono().fontStyle,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}
