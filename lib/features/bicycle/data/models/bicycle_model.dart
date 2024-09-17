import 'package:rideshare_app/features/bicycle/domain/entities/bicycle.dart';

class BicycleModel extends Bicycle {
  const BicycleModel(
      {required super.id,
      required super.price,
      required super.model,
      required super.type,
      required super.photoPath,
      required super.isFavourite,
      required super.size,
      required super.note});

  factory BicycleModel.fromJson(Map<String, dynamic> json) {
    return BicycleModel(
        id: json['id'],
        price: json ['model_price']['price'],
        model: json ['model_price']['model'],
        type: json['type'],
        photoPath: json['photoPath'],
        isFavourite: json['isFavourite'],
        size: json['size'],
        note: json['note']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'price': price,
      'model': model,
      'type': type,
      'photoPath': photoPath,
      'isFavourite': isFavourite,
      'size': size,
      'note': note,
    };
  }
}
