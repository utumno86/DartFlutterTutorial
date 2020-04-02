// Import flutter helper library
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

import 'dart:convert';

import 'models/image_model.dart';

// Create a class that will be our custom widget
// This class must extend the 'StatelessWidget' base class

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;

  void fetchImage() async {
    counter ++;
    var response = await get('https://jsonplaceholder.typicode.com/photos/500/$counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));
  }
  
  // Must define a 'build' method that returns
  // the widgets that *this* widget will show
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text("Let's See Some Images!"),
        ),
      )
    );
  }
}