import 'package:flutter/material.dart';
import 'package:formation_aout/facebook_clone/market_place.dart';
import 'package:formation_aout/facebook_clone/user_menu_page.dart';
import 'package:formation_aout/facebook_clone/widgets/app_icon.dart';

class FacebookCloneHomePage extends StatefulWidget {
  const FacebookCloneHomePage({Key? key}) : super(key: key);

  @override
  State<FacebookCloneHomePage> createState() => _FacebookCloneHomePageState();
}

class _FacebookCloneHomePageState extends State<FacebookCloneHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
            ),
          ),
          centerTitle: false,
          elevation: 0,
          actions: [
            AppIcon(
              icon: Icons.add,
              iconColor: Colors.blueAccent,
              backColor: Colors.purple,
            ),
            AppIcon(icon: Icons.search),
            AppIcon(icon: Icons.message),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.group_outlined,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.store_outlined,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.card_giftcard,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.menu_outlined,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            UserFeeds(),
            UserFeeds(),
            MarketPlace(),
            UserFeeds(),
            UserFeeds(),
            UserMenuPage(),
          ],
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: const [
        //     BottomNavigationBarItem(
        //       label: "Home",
        //       icon: Icon(Icons.home),
        //     ),
        //     BottomNavigationBarItem(
        //       label: "Settings",
        //       icon: Icon(Icons.settings),
        //     ),
        //   ],
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: const Icon(Icons.add),
        // ),
      ),
    );
  }
}

class UserFeeds extends StatefulWidget {
  const UserFeeds({
    Key? key,
  }) : super(key: key);

  @override
  State<UserFeeds> createState() => _UserFeedsState();
}

class _UserFeedsState extends State<UserFeeds> {
  late TextEditingController _postController;
  @override
  void initState() {
    _postController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(.2),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Colors.blueAccent,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 0.0, left: 4),
                      child: TextFormField(
                        autofocus: false,
                        controller: _postController,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          hintText: "What's on your mind?",
                          hintStyle: const TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.photo,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            ),
            const Divider(thickness: .1),
            Container(
              height: MediaQuery.of(context).size.height * .32,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    const TabBar(
                      labelColor: Colors.black,
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      tabs: [
                        Tab(
                          text: "Stories",
                        ),
                        Tab(
                          text: "Reels",
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TabBarView(
                          children: [
                            ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                for (int i = 0; i < 5; i++)
                                  Container(
                                    margin: const EdgeInsets.only(right: 5),
                                    decoration: BoxDecoration(
                                        color: Colors.primaries[i],
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    width: (MediaQuery.of(context).size.width /
                                            3.3 -
                                        5 -
                                        10),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors
                                                    .primaries.reversed
                                                    .elementAt(i),
                                              ),
                                            ],
                                          ),
                                          const Text(
                                            "Lucas Filario",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            ListView(
                              scrollDirection: Axis.horizontal,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(),
            FacebookCard(),
            Divider(),
            FacebookCard(),
            Divider(),
            FacebookCard(),
          ],
        ),
      ),
    );
  }
}

class FacebookCard extends StatelessWidget {
  const FacebookCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: AssetImage("assets/images/image1.png"),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Youthinside Kls"),
                        Row(
                          children: [
                            Text("2h"),
                            SizedBox(width: 5),
                            Icon(Icons.wordpress_outlined),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: const [
                    Icon(Icons.more_horiz),
                    Icon(Icons.close),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Tay-C exagere aussi avec les filles sur scene hein. Meme les filles la Yeuch",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [Icon(Icons.thumb_up), Icon(Icons.face), Text("2")],
                ),
                Text("2 comments"),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.thumb_up),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Like"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.comment_outlined),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Like"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Share"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blueAccent,
            Colors.yellow,
            Colors.green,
            Colors.red,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.5),
            spreadRadius: 1,
            blurRadius: 20,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: Colors.blueAccent,
          width: 2,
        ),
        // color: Colors.red,
        //  borderRadius: BorderRadius.circular(20),
        // shape: BoxShape.circle,
        image: const DecorationImage(
          image: NetworkImage(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Kribi.jpg/300px-Kribi.jpg"),
          fit: BoxFit.contain,
        ),
      ),
      child: const Center(
          child: Text(
        "Kribi",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      )),
    );
  }
}

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
