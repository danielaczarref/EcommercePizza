import 'dart:io';
import 'classProduct.dart';

class Soda extends Product {
  String sodaBrand;
  Soda (
    double price,
    this.sodaBrand,
  ) : super(price);

  Map<String, dynamic> toMap() {
    return {
      'sodaDescription: ', 'A ${sodaBrand} soda for $ ${price}'
    };
  }
}