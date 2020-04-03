import 'package:flutter/material.dart';

import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemBuilder: (context, int index) {
       return buildImage(images[index]);
      },
      itemCount: images.length,
    );
  }

  Widget buildImage(ImageModel image) {
     return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey) 
          ),
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Padding(
                child: Image.network(image.url),
                padding: EdgeInsets.only(bottom: 20.0)
              ),
              Text(image.title)
            ],
          )
        );
  }
}

