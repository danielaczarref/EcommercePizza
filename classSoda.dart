import 'dart:core';
import 'classProduct.dart';

class Soda extends Product {
  String sodaBrand;
  double liter;
  Soda(
    double price,
    this.liter,
    this.sodaBrand,
  ) : super(price);
}
