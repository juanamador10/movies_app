import 'package:flutter/material.dart';
import 'package:movies_app/ui/card_ui.dart';
import 'package:movies_app/ui/card_ui2.dart';

class CastScreen extends StatelessWidget {
  const CastScreen({Key? key}) : super(key: key);

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
        body: Container(
          margin: const EdgeInsets.all(18),
          child: Column(
            children: const [
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 35,
                child: Text(
                  "Cast",
                  style: fontStyle1,
                  textAlign: TextAlign.right,
                ),
              ),
              CardUi2(
                name: 'Chad Stahkelski',
                position: 'Director',
                link: 'lib/images/Chad_Stahkelski.png',
              ),
              CardUi2(
                name: 'Keanu Reeves',
                position: 'John Wick',
                link: 'lib/images/keanu.jpeg',
              ),
              CardUi2(
                name: 'Haile Berry',
                position: 'Sofia',
                link: 'lib/images/Haile_Berry.png',
              ),
              CardUi2(
                name: 'Ian McShane',
                position: 'Wingstone',
                link: 'lib/images/Ian_McShane.png',
              ),
            ],
          ),
        ));
  }
}
