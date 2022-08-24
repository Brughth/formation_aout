import 'package:dio/dio.dart';
import 'package:formation_aout/university_list/models/university_model.dart';

class UniversityServices {
  Future<List<UniversityModel>?> getUniversityListForcameroon() async {
    Dio dio = Dio();
    try {
      Response response = await dio
          .get("http://universities.hipolabs.com/search?country=france");

      List<UniversityModel> universities = [];

      universities = List.from(response.data.map((json) {
        return UniversityModel.fronJson(json);
      }));

      return universities;
    } catch (e) {
      print(e);
    }
  }

  Future<List<UniversityModel>?> getUniversityListByContry(
      String contry) async {
    Dio dio = Dio();
    try {
      Response response = await dio
          .get("http://universities.hipolabs.com/search?country=${contry}");

      List<UniversityModel> universities = [];

      universities = List.from(response.data.map((json) {
        return UniversityModel.fronJson(json);
      }));

      return universities;
    } catch (e) {
      print(e);
    }
  }
}
