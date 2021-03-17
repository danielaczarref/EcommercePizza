import 'dart:io';
import 'classProduct.dart';

class Pizza extends Product { 
  String pizzaFlavor;
  Pizza (
    double price,
    this.pizzaFlavor
  ) : super(price);

  Map<String, dynamic> toMap() {
    return {
      'pizzaDescription: ', 'One pizza flavor ${pizzaFlavor} for $ ${price}'
    };
  }
}