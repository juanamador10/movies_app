import 'package:flutter/material.dart';
import 'package:movies_app/screens/gallery.dart';

import '../ui/image_gallery.dart';

class ActorInfo extends StatelessWidget {
  const ActorInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          ClipPath(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              child: Image(
                  image: const AssetImage("lib/images/keanu2.jpeg"),
                  height: MediaQuery.of(context).size.height / 2,
                  width: double.infinity,
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 180),
                ),
                const SizedBox(
                  height: 180,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Keanu Reeves",
                              style:
                                  Theme.of(context).textTheme.caption!.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const SizedBox(
                        height: 30,
                        child: Text(
                          "54 years old",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Bio",
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () => {},
                                child: Text(
                                  "Full Bio >",
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: Colors.grey[400],
                                      ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            maxLines: 10,
                            "John Wick regresa de nuevo pero con una recompensa sobre su cabeza que persigue unos mercenarios. Tras asesinar a uno de los miembros de su gremio, Wick es expulsado y se convierte en el foco de atención de todos los sicarios de la organización.",
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const SizedBox(height: 25),
                      Row(children: <Widget>[
                        Text("Photos",
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black)),
                        Spacer(),
                        TextButton(
                            style: TextButton.styleFrom(
                                primary: Colors.grey,
                                textStyle: const TextStyle(fontSize: 12)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Gallery()));
                            },
                            child: const Text('More Photos')),
                        const Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: Colors.grey,
                          size: 15.0,
                        )
                      ]),
                      Column(children: <Widget>[
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: const <Widget>[
                              ImageGallery(
                                  Image_URL:
                                      "https://img.peliplat.com/api/resize/v1?imagePath=std/202201/0/c/0cacfbdd0ccde1403f89cc9ee8d0fb6c.jpg&mode=LFIT&width=600&height=600&limit=false&c=1.jpg",
                                  widthImage: 150),
                              SizedBox(width: 10),
                              ImageGallery(
                                  Image_URL:
                                      "https://1.bp.blogspot.com/-6guqAWKX2CE/XbqJ4BuvR5I/AAAAAAAA3F8/emeK-ao95UIwb0slTwMqV-56HHxQSUX_ACKgBGAsYHg/s600/7e52c00fc133102d459731e9ab410de1.jpg",
                                  widthImage: 150),
                              SizedBox(width: 10),
                              ImageGallery(
                                  Image_URL:
                                      "https://cdnnmundo1.img.sputniknews.com/img/108759/85/1087598582_844:0:2892:2048_1920x0_80_0_0_90e65151ea961ffdc7547382723de090.jpg",
                                  widthImage: 150),
                              SizedBox(width: 10),
                              ImageGallery(
                                  Image_URL:
                                      "https://www.famousbirthdays.com/faces/reeves-keanu-image.jpg",
                                  widthImage: 150),
                            ],
                          ),
                        )
                      ]),
                      /*Row(
                        children: [
                          Column(
                            children: [
                              Card(
                                
                              )
                            ],
                          ),
                        ],
                      )*/
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
