// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ItemModel {
  final String name;
  final String type;
  final int SeatNumber;
  final String location;
  final String image;
  final String fuile;
  final String time;

  ItemModel({
    required this.name,
    required this.type,
    required this.SeatNumber,
    required this.location,
    required this.image,
    required this.fuile,
    required this.time,
  });

  ItemModel copyWith({
    String? name,
    String? type,
    int? SeatNumber,
    String? location,
    String? image,
    String? fuile,
    String? time,
  }) {
    return ItemModel(
      name: name ?? this.name,
      type: type ?? this.type,
      SeatNumber: SeatNumber ?? this.SeatNumber,
      location: location ?? this.location,
      image: image ?? this.image,
      fuile: fuile ?? this.fuile,
      time: time ?? this.time,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
      'SeatNumber': SeatNumber,
      'location': location,
      'image': image,
      'fuile': fuile,
      'time': time,
    };
  }

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      name: map['name'] as String,
      type: map['type'] as String,
      SeatNumber: map['SeatNumber'] as int,
      location: map['location'] as String,
      image: map['image'] as String,
      fuile: map['fuile'] as String,
      time: map['time'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemModel.fromJson(String source) => ItemModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ItemModel(name: $name, type: $type, SeatNumber: $SeatNumber, location: $location, image: $image, fuile: $fuile, time: $time)';
  }

  @override
  bool operator ==(covariant ItemModel other) {
    if (identical(this, other)) return true;

    return
      other.name == name &&
          other.type == type &&
          other.SeatNumber == SeatNumber &&
          other.location == location &&
          other.image == image &&
          other.fuile == fuile &&
          other.time == time;
  }

  @override
  int get hashCode {
    return name.hashCode ^
    type.hashCode ^
    SeatNumber.hashCode ^
    location.hashCode ^
    image.hashCode ^
    fuile.hashCode ^
    time.hashCode;
  }
}
