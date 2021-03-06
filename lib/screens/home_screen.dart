import 'package:flutter/material.dart';
import 'package:movies_app/screens/actorInfo_screen.dart';
import 'package:movies_app/screens/cast_screen.dart';
import 'package:movies_app/ui/card_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    const String title = "";
    const String movie_title = "John Wick: Chapter 3 - Parabellum";
    const String genre = "Action, Crime, Thriller";
    const String details = "USA 2019 / 2h 10min / PG-16";
    const String releaseDate = "05/07/2022";

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
                  image: const AssetImage("lib/images/john_wick_3.jpeg"),
                  height: MediaQuery.of(context).size.height / 2,
                  width: double.infinity,
                  fit: BoxFit.cover),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              Container(
                padding: const EdgeInsets.only(top: 120),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      const Icon(
                        Icons.play_circle_outline,
                        color: Colors.yellow,
                        size: 65,
                      ),
                      Text(
                        title.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'muli',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 140,
              ),
              Container(
                margin: const EdgeInsets.all(12),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              movie_title,
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
                          genre,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                        child: Text(
                          details,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                child: const Text(
                                  "Showtimes",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.purple,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                child: const Text(
                                  "Details",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Story",
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            maxLines: 10,
                            "John Wick regresa de nuevo pero con una recompensa sobre su cabeza que persigue unos mercenarios. Tras asesinar a uno de los miembros de su gremio, Wick es expulsado y se convierte en el foco de atenci??n de todos los sicarios de la organizaci??n.",
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Cast",
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const CastScreen()))
                                },
                                child: Text(
                                  "Full Cast >",
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
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
                        height: 25,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            CardUi(
                              name: 'Chad Stahkelski',
                              position: 'Director',
                              link: 'lib/images/Chad_Stahkelski.png',
                            ),
                            CardUi(
                              name: 'Keanu Reeves',
                              position: 'John Wick',
                              link: 'lib/images/keanu.jpeg',
                            ),
                            CardUi(
                              name: 'Haile Berry',
                              position: 'Sofia',
                              link: 'lib/images/Haile_Berry.png',
                            ),
                            CardUi(
                              name: 'Ian McShane',
                              position: 'Wingstone',
                              link: 'lib/images/Ian_McShane.png',
                            ),
                          ],
                        ),
                      ),
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
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
