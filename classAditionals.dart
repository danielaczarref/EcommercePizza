import 'dart:core';
import 'classProduct.dart';

class Additionals extends Product {
  String additionalDescription;
  int amount;
  Additionals(
    double price,
    this.amount,
    this.additionalDescription,
  ) : super(price);
}
