import 'package:flutter/material.dart';

import 'screens/newslist.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: 'News!',
      home: NewsList(),
    );
  }
}
