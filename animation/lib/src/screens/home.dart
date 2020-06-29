import 'package:flutter/material.dart';

import 'dart:math';

import '../widgets/cat.dart';

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> with TickerProviderStateMixin {
  Animation<double> catAnimation;
  AnimationController catController;
  Animation<double> boxAnimation;
  AnimationController boxController;

  initState() {
    super.initState();

    catController = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );

    catAnimation = Tween(begin: -35.0, end: -80.0)
      .animate(
        CurvedAnimation(
          parent: catController,
          curve: Curves.easeIn,
        ),
      );

    boxController = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );

    boxAnimation = Tween(begin: pi * 0.6 , end: pi * 0.65)
      .animate(
        CurvedAnimation(
          parent: boxController,
          curve: Curves.linear,
        ),
      );
    boxAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        boxController.repeat();
      }
    });
    boxController.forward();
  }

  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation!'),
      ),
      body: GestureDetector(
        child: Center(child: 
          Stack(
            overflow: Overflow.visible,
            children: [
              buildCatAnimation(),
              buildBox(),
              buildLeftFlap()
            ]
          ), 
        ), 
        onTap: onTap,
      ),
    );

  }

  Widget buildCatAnimation() {
    return AnimatedBuilder(
      animation: catAnimation,
      builder: (context, child) {
        return Positioned(
          child: child,
          top: catAnimation.value,
          right: 0.0,
          left: 0.0
        );
      },
      child: Cat(),
    );
  }

  Widget buildBox() {
    return Container(
      height: 200.0,
      width: 200.0,
      color: Colors.brown,
    );
  }

  Widget buildLeftFlap(){
    return Positioned(
      child: AnimatedBuilder(
        animation: boxAnimation,
        child: 
          Container(
            height: 10.0,
            width: 125.0,
            color: Colors.brown
          ),
        builder: (context, child) {
          return  Transform.rotate(
            child: child,
            angle: boxAnimation.value,
            alignment: Alignment.topLeft
          );
        }
      ),
    );
  }

  onTap() {
    if (catController.status == AnimationStatus.completed) {
      catController.reverse();
    } else if (catController.status == AnimationStatus.dismissed) {
      catController.forward();
    }
  }
}

