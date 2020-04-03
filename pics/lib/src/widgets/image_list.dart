import 'package:flutter/material.dart';

import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemBuilder: (context, int index) {
        return Text(images[index].url);
      },
      itemCount: images.length,
    );
  }
}