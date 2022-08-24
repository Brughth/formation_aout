class MenuModel {
  final String image;
  final String description;

  MenuModel({
    required this.image,
    required this.description,
  });

  fromJson(json) {
    return MenuModel(image: image, description: description);
  }
}
