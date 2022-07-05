import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/actorInfo_screen.dart';

class CardUi2 extends StatelessWidget {
  final String name;
  final String position;
  final String link;

  const CardUi2(
      {Key? key,
      required this.name,
      required this.position,
      required this.link})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontStyle1 = TextStyle(
      fontWeight: FontWeight.bold,
    );
    const fontStyle2 = TextStyle(
        fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 12);

    return Column(
      children: [
        InkWell(
          onTap: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ActorInfo()))
          },
          child: Center(
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                elevation: 0,
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          ClipPath(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image(image: AssetImage(link), height: 60),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              name,
                              style: fontStyle1,
                              textAlign: TextAlign.right,
                            ),
                            Text(
                              position,
                              style: fontStyle2,
                              textAlign: TextAlign.right,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
