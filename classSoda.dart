import 'dart:io';
import 'classProduct.dart';

class Soda extends Product {
  String sodaBrand;
  double liter;
  Soda (
    double price,
    this.liter,
    this.sodaBrand,
  ) : super(price);

  Map<String, dynamic> toMap() {
    return {
      'sodaDescription: ', 'A ${liter}L ${sodaBrand} soda for ${price} dollars'
    };
  }
}