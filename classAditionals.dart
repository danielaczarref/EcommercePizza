import 'dart:io';
import 'classProduct.dart';

class Additionals extends Product {
  String additionalDescription;
  int amount;
  Additionals (
    double price,
    this.amount,
    this.additionalDescription,
  ) : super(price);

  Map<String, dynamic> toMap() {
    return {
      'additionalDescription: ', "${amount} of ${additionalDescription} for ${price} each"
    };
  }
}