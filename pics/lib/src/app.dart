// Import flutter helper library
import 'package:flutter/material.dart';

// Create a class that will be our custom widget
// This class must extend the 'StatelessWidget' base class

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  
  // Must define a 'build' method that returns
  // the widgets that *this* widget will show
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          } ,
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text("Let's See Some Images!"),
        ),
      )
    );
  }
}