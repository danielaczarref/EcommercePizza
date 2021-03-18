import 'dart:core';
import 'classProduct.dart';

class Pizza extends Product {
  String pizzaFlavor;
  String size;
  Pizza(double price, this.size, this.pizzaFlavor) : super(price);
}
