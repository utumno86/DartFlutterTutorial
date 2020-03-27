// I need to import a helper library
// from flutter to get content on the screen
import 'package:flutter/material.dart';

// Define a 'main' function to run when our app starts
void main() {
  // Create a new text widget to show some text on the screen
  var app = MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Let's See Some Images!"),
        ),
      )
    );

  // Take that widget and get it on the screen
  runApp(app);
}