class AdvertisedInfo {
  int id;
  String name;
  String description;
  String price;
  String city;

  AdvertisedInfo(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.city});

  factory AdvertisedInfo.fromJson(Map<String, dynamic> json) {
    return AdvertisedInfo(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json["description"] as String,
      price: json['price'] as String,
      city: json['city'] as String,
    );
  }
}
