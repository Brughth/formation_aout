import 'package:flutter/material.dart';
import 'package:formation_aout/facebook_clone/facebook_clone_home_page.dart';
import 'package:formation_aout/university_list/university_list_home_page.dart';

class ApplicationPage extends StatelessWidget {
  const ApplicationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formation Auot"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(3),
        child: ListView(
          children: [
            AppItem(
              title: 'FaceBook Clone',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FacebookCloneHomePage(),
                  ),
                );
              },
            ),
            AppItem(
              title: "University List",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const UniversityListHomePage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class AppItem extends StatelessWidget {
  const AppItem({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        trailing: const Icon(
          Icons.navigate_next,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
