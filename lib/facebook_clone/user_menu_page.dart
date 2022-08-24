import 'package:flutter/material.dart';
import 'package:formation_aout/facebook_clone/widgets/app_icon.dart';
import 'package:formation_aout/facebook_clone/widgets/shortcut_widget.dart';

class UserMenuPage extends StatefulWidget {
  UserMenuPage({Key? key}) : super(key: key);

  @override
  State<UserMenuPage> createState() => _UserMenuPageState();
}

class _UserMenuPageState extends State<UserMenuPage> {
  String mystring = 'Olice';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(.2),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Menu",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      AppIcon(icon: Icons.settings),
                      AppIcon(icon: Icons.search),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Card(
                elevation: 5,
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/image1.png"),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Olice SONA"),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 6),
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey.withOpacity(.1),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.refresh,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 6),
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey.withOpacity(.1),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.download,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 0,
                left: 10,
                right: 10,
                bottom: 10,
              ),
              child: Text(
                "Your shortcuts",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .15,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ShortCutWidget(
                      image: 'assets/images/image11.jpg',
                      name: 'AgriFast',
                    ),
                    ShortCutWidget(
                      image: 'assets/images/image22.jpg',
                      name: 'AgriLeft',
                    ),
                    ShortCutWidget(
                      image: 'assets/images/image33.jpg',
                      name: 'FastEad',
                    ),
                    ShortCutWidget(
                      image: 'assets/images/image55.jpg',
                      name: 'NTECH-SERVICES',
                    ),
                    ShortCutWidget(
                      image: 'assets/images/image88.jpg',
                      name: 'LABO ACADEMY',
                    ),
                    ShortCutWidget(
                      image: 'assets/images/image77.jpg',
                      name: 'AgriFast AgriFast',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
