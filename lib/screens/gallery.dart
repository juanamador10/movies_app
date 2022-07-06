import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:movies_app/ui/photo.dart';

class Gallery extends StatelessWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontStyle1 = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          "Photos",
          style: fontStyle1,
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(12),
          child: StaggeredGrid.count(
            crossAxisCount: 5,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            axisDirection: AxisDirection.down,
            children: const [
              PhotoUi(
                  url:
                      "https://www.latercera.com/resizer/IDNBtkG6xPD2nTQKVnFFafk0rQw=/arc-anglerfish-arc2-prod-copesa/public/OTPRTD4LXREWVL6QAEP5NIZOMQ.jpg",
                  crossaxis: 3,
                  mainaxis: 2),
              PhotoUi(
                  url:
                      "https://www.kindpng.com/picc/m/363-3631558_keanu-reeves-png-png-download-hideo-kojima-and.png",
                  crossaxis: 2,
                  mainaxis: 2),
              PhotoUi(
                  url:
                      "https://media.fashionnetwork.com/cdn-cgi/image/fit=cover,width=600,height=600/m/202c/3976/f400/bf49/094f/4fa6/276b/4460/dd8e/6058/6058.jpg",
                  crossaxis: 1,
                  mainaxis: 1),
              PhotoUi(
                  url:
                      "https://biographymask.com/wp-content/uploads/2021/05/Keanu-Reeves.jpg ",
                  crossaxis: 1,
                  mainaxis: 1),
              PhotoUi(
                  url:
                      "https://1.bp.blogspot.com/-6guqAWKX2CE/XbqJ4BuvR5I/AAAAAAAA3F8/emeK-ao95UIwb0slTwMqV-56HHxQSUX_ACKgBGAsYHg/s600/7e52c00fc133102d459731e9ab410de1.jpg",
                  crossaxis: 2,
                  mainaxis: 2),
              PhotoUi(
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyYFxSQ1bFtK5EI9Zgocq6ggPMfMpC85cn0w&usqp=CAU",
                  crossaxis: 2,
                  mainaxis: 1),
              PhotoUi(
                  url:
                      "https://imagenes.razon.com.mx/files/image_940_470/uploads/2020/05/29/5ed0d28ac7492.jpeg",
                  crossaxis: 2,
                  mainaxis: 1),
              PhotoUi(
                  url:
                      "https://www.narcity.com/media-library/keanu-reeves-just-gifted-his-john-wick-stunt-crew-with-rolex-watches-worth-over-10k.jpg?id=27778760&width=600&coordinates=0%2C0%2C528%2C0&height=600",
                  crossaxis: 1,
                  mainaxis: 1),
              PhotoUi(
                  url:
                      "https://www.famousbirthdays.com/faces/reeves-keanu-image.jpg",
                  crossaxis: 1,
                  mainaxis: 1),
              PhotoUi(
                  url:
                      "https://img.peliplat.com/api/resize/v1?imagePath=std/202201/0/c/0cacfbdd0ccde1403f89cc9ee8d0fb6c.jpg&mode=LFIT&width=600&height=600&limit=false&c=1.jpg",
                  crossaxis: 3,
                  mainaxis: 3),
              PhotoUi(
                  url:
                      "https://ctftime.org/media/team/external-content.duckduckgo.com_3.jpeg",
                  crossaxis: 2,
                  mainaxis: 2),
              PhotoUi(
                  url:
                      "https://d1lss44hh2trtw.cloudfront.net/assets/article/2021/11/23/neo-matrix-mortal-kombat_feature.jpg",
                  crossaxis: 2,
                  mainaxis: 1),
              PhotoUi(
                  url:
                      "https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2019/06/hipertextual-guionista-marvel-explica-que-personaje-deberia-ser-keanu-reeves-2019983308-scaled.jpg?fit=2560%2C1707&quality=50&strip=all&ssl=1",
                  crossaxis: 3,
                  mainaxis: 2),
              PhotoUi(
                  url:
                      "https://cdnnmundo1.img.sputniknews.com/img/108759/85/1087598582_844:0:2892:2048_1920x0_80_0_0_90e65151ea961ffdc7547382723de090.jpg",
                  crossaxis: 2,
                  mainaxis: 2),
              PhotoUi(
                  url:
                      "https://www.narcity.com/media-library/keanu-reeves-gave-a-speech-listing-everything-he-loves-about-toronto-it-got-so-random.jpg?id=28264111&width=600&coordinates=0%2C0%2C528%2C0&height=600",
                  crossaxis: 3,
                  mainaxis: 3),
              PhotoUi(
                  url:
                      "https://www.narcity.com/media-library/keanu-reeves-just-gifted-his-john-wick-stunt-crew-with-rolex-watches-worth-over-10k.jpg?id=27778760&width=600&coordinates=0%2C0%2C528%2C0&height=600",
                  crossaxis: 2,
                  mainaxis: 2),
            ],
          ),
        ),
      ),
    );
  }
}
