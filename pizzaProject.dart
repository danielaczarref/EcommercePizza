import 'dart:io';
import 'classProduct.dart';

class Pizza extends Product { 
  String pizzaFlavor;
  String size;
  Pizza (
    double price,
    this.size,
    this.pizzaFlavor
  ) : super(price);

  Map<String, dynamic> toMap() {
    return {
      'pizzaDescription: ', 'One ${size} pizza flavor ${pizzaFlavor} for ${price} dollars'
    };
  }
}