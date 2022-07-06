import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:movies_app/main.dart';

class PhotoUi extends StatelessWidget {
  final String url;
  final int crossaxis;
  final int mainaxis;

  const PhotoUi(
      {Key? key,
      required this.url,
      required this.crossaxis,
      required this.mainaxis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontStyle1 = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);

    return StaggeredGridTile.count(
        crossAxisCellCount: crossaxis,
        mainAxisCellCount: mainaxis,
        child: ClipRRect(
            //borderRadius: BorderRadius.circular(25.0),
            child: Image(image: NetworkImage(url))));
  }
}
