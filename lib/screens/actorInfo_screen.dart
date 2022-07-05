import 'package:flutter/material.dart';

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
          Column(
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
                              style:
                                  Theme.of(context).textTheme.caption!.copyWith(
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
                          style: Theme.of(context).textTheme.caption!.copyWith(
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
        ],
      ),
    ));
  }
}
