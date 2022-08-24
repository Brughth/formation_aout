class UniversityModel {
  final List<String?> domains;
  final String alpha_two_code;
  final String country;
  final List<String?> web_pages;
  final String name;
  final dynamic state_province;

  UniversityModel({
    required this.domains,
    required this.alpha_two_code,
    required this.country,
    required this.web_pages,
    required this.name,
    required this.state_province,
  });

  factory UniversityModel.fronJson(Map<String, dynamic> json) {
    return UniversityModel(
      domains: List<String?>.from(json['domains']),
      alpha_two_code: json['alpha_two_code'],
      country: json['country'],
      web_pages: List<String?>.from(json['web_pages']),
      name: json['name'],
      state_province: json['state_province'],
    );
  }

  Map<String, dynamic> toMap(UniversityModel university) {
    return {
      'domains': university.domains,
      'alpha_two_code': university.alpha_two_code,
      'country': university.country,
      'web_pages': university.web_pages,
      'name': university.name,
      'state_province': university.state_province,
    };
  }
}
