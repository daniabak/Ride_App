import 'package:equatable/equatable.dart';

class Bicycle extends Equatable {
  final int id;
  final double price;
  final String model;
  final String type;
  final String photoPath;
  final bool isFavourite;
  final int size;
  final String note;

  const Bicycle(
      {required this.id,
      required this.price,
      required this.model,
      required this.type,
      required this.photoPath,
      required this.isFavourite,
      required this.size,
      required this.note});

  @override
  List<Object?> get props => [id,price,type,photoPath];
}
