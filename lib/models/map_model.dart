class MapModel {
  MapModel({
    required this.id,
    required this.name,
    required this.address,
    required this.capacity,
    required this.city,
    required this.isVirtualStation,
    required this.latitude,
    required this.longitude,
    required this.zip,
  });
  late final int id;
  late final String name;
  late final String address;
  late final int capacity;
  late final String city;
  late final bool isVirtualStation;
  late final double latitude;
  late final double longitude;
  late final String zip;

  MapModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    address = json['address'];
    capacity = json['capacity'];
    city = json['city'];
    isVirtualStation = json['isVirtualStation'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    zip = json['zip'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['address'] = address;
    _data['capacity'] = capacity;
    _data['city'] = city;
    _data['isVirtualStation'] = isVirtualStation;
    _data['latitude'] = latitude;
    _data['longitude'] = longitude;
    _data['zip'] = zip;
    return _data;
  }
}
