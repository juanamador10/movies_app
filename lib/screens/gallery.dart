import 'package:flutter/material.dart';
import 'package:movies_app/ui/card_ui.dart';
import 'package:movies_app/ui/card_ui2.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Gallery extends StatelessWidget {
  Gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontStyle1 = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);

    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text(
            "Cast",
            style: fontStyle1,
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: 
        StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children:  const [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2, 
            child: Image(image: NetworkImage("lib/images/keanu2.jpeg"),
            ),
      ),
      StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2, 
            child: Image(image: NetworkImage("lib/images/keanu2.jpeg"),
            ),
      ),
    
  ],)

    );
  }
}
