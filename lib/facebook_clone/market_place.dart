import 'package:flutter/material.dart';
import 'package:formation_aout/facebook_clone/menu_model.dart';
import 'package:formation_aout/facebook_clone/widgets/app_icon.dart';

class MarketPlace extends StatefulWidget {
  MarketPlace({Key? key}) : super(key: key);

  @override
  State<MarketPlace> createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> {
  List<MenuModel> listMenuModel = [
    MenuModel(
      image: "assets/images/image11.jpg",
      description: "FCFA 1 . Chemise fin de serie plus plus",
    ),
    MenuModel(
      image: "assets/images/image22.jpg",
      description: "FCFA 1 . Chemise fin de serie plus plus",
    ),
    MenuModel(
      image: "assets/images/image33.jpg",
      description: "FCFA 1 . Chemise fin de serie plus plus",
    ),
    MenuModel(
      image: "assets/images/image55.jpg",
      description: "FCFA 1 . Chemise fin de serie plus plus",
    ),
    MenuModel(
      image: "assets/images/image77.jpg",
      description: "FCFA 1 . Chemise fin de serie plus plus",
    ),
    MenuModel(
      image: "assets/images/image77.jpg",
      description: "FCFA 1 . Chemise fin de serie plus plus",
    ),
  ];

  List<MenuItem> myMenuList(List<MenuModel> menus) {
    List<MenuItem> menuList = [];
    for (var menu in menus) {
      MenuItem menuItem = MenuItem(
        image: menu.image,
        description: menu.description,
      );

      menuList.add(menuItem);
    }

    return menuList;
  }

  List<Map<String, String>> menuList = [
    {
      'image': 'assets/images/image11.jpg',
      'description': 'FCFA 1 . Chemise fin de serie plus plus'
    },
    {
      'image': 'assets/images/image22.jpg',
      'description': 'FCFA 1 . Chemise fin de serie plus plus'
    },
    {
      'image': 'assets/images/image33.jpg',
      'description': 'FCFA 1 . Chemise fin de serie plus plus'
    },
    {
      'image': 'assets/images/image55.jpg',
      'description': 'FCFA 1 . Chemise fin de serie plus plus'
    },
    {
      'image': 'assets/images/image77.jpg',
      'description': 'FCFA 1 . Chemise fin de serie plus plus'
    },
    {
      'image': 'assets/images/image88.jpg',
      'description': 'FCFA 1 . Chemise fin de serie plus plus'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Marketplace",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      AppIcon(icon: Icons.person),
                      AppIcon(icon: Icons.search),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 60,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: (MediaQuery.of(context).size.width - 30) / 2,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(Icons.edit),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                "Sell",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: (MediaQuery.of(context).size.width - 30) / 2,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(Icons.menu_open),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                "Categories",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 7,
                horizontal: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "New for you",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Sell All(2)",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Stack(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/image1.png"),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),
                title: const Text(
                  "Njoume Sami replied to your messega obort this listing: 350",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.more_horiz,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 7,
                horizontal: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Today's Picks",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: Colors.blueAccent,
                      ),
                      Text(
                        "Douala, Cameroun",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisSpacing: 8,
              crossAxisCount: 2,
              childAspectRatio: .8,
              children: myMenuList(listMenuModel),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    required this.image,
    required this.description,
  }) : super(key: key);
  final String image;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 8,
            ),
            child: Text(
              description,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
