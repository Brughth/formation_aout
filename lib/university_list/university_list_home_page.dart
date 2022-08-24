import 'package:flutter/material.dart';
import 'package:formation_aout/university_list/models/university_model.dart';
import 'package:formation_aout/university_list/services/university_service.dart';
import 'package:url_launcher/url_launcher.dart';

class UniversityListHomePage extends StatefulWidget {
  const UniversityListHomePage({Key? key}) : super(key: key);

  @override
  State<UniversityListHomePage> createState() => _UniversityListHomePageState();
}

class _UniversityListHomePageState extends State<UniversityListHomePage> {
  late UniversityServices _universityServices;
  @override
  void initState() {
    _universityServices = UniversityServices();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("University List"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(3),
        child: FutureBuilder<List<UniversityModel>?>(
          future: _universityServices.getUniversityListForcameroon(),
          builder: (BuildContext context,
              AsyncSnapshot<List<UniversityModel>?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.data!.isEmpty) {
                return const Center(
                  child: Text("Any university found"),
                );
              }
              return ListView(
                children: snapshot.data!.map((university) {
                  return Card(
                    child: ListTile(
                      onTap: () async {
                        Uri url = Uri(path: university.web_pages.first);
                        if (!await launchUrl(
                          url,
                          mode: LaunchMode.externalApplication,
                        )) {
                          throw 'Could not launch $url';
                        }
                      },
                      title: Text(university.name),
                    ),
                  );
                }).toList(),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
