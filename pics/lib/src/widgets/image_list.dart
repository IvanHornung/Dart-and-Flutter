import 'package:flutter/material.dart';
import '../models/image_model.dart';

//because ImageList itself is not in charge of changing variables...
class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, int index) {
          return Image.network(images[index].url);
        });
  }
}
