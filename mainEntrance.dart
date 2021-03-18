import 'dart:io';
import 'pizzaProject.dart';
import 'classSoda.dart';
import 'classAditionals.dart';

void main() {
  var request = [];
  var aux = 1;

  print('Welcome to our Dani&André Pizzeria!');
  while (aux != 3) {
    print('\n');
    print(
        '\n\nOur menu is composed by pizzas, soda and many other additionals at your please!');
    print('\n');
    print(
        '\n\nPlease, press 1 to add items to your request\n\n Press 2 to display your orders\n\n Press 3 to end request');
    aux = int.parse(stdin.readLineSync()!);
    switch (aux) {
      case 1:
        {
          print(
              '\n\nPlease, tell us what do you wish to order:\n\n1 - Pizza;\n\n 2 - Soda;\n\n 3 - Other additionals');
          int order = int.parse(stdin.readLineSync()!);
          if (order == 1) {
            print(
                '\n\nWhich pizza flavor do you wish?\n\n1 - Pepperoni;\n\n2 - 4 Cheese;\n\n3 - Chicken with catupiry;\n\n4 - Jerked beef');
            var pizzaFlavor = int.parse(stdin.readLineSync()!);
            switch (pizzaFlavor) {
              case 1:
                {
                  Pizza newPizza = Pizza(59.90, 'G', 'Pepperoni');
                  request.add(newPizza);
                }
                break;
              case 2:
                {
                  Pizza newPizza = Pizza(49.89, 'M', '4 Cheese');
                  request.add(newPizza);
                }
                break;
              case 3:
                {
                  Pizza newPizza = Pizza(69.90, 'G', 'Chicken with catupiry');
                  request.add(newPizza);
                }
                break;
              case 4:
                {
                  Pizza newPizza = Pizza(69.90, 'G', 'Jerked beef');
                  request.add(newPizza);
                }
                break;
              default:
                {
                  print('\nYour request is not valid!\n');
                  break;
                }
            }
          } else if (order == 2) {
            print(
                '\n\nPlease, choose your soda brand among the available ones:\n\n1 - Coke;\n\n2 - Pepsi');
            var selectedBrand = int.parse(stdin.readLineSync()!);
            switch (selectedBrand) {
              case 1:
                {
                  Soda newSoda = Soda(10, 1, 'Coke');
                  request.add(newSoda);
                }
                break;
              case 2:
                {
                  Soda newSoda = Soda(9, 1.5, 'Pespi');
                  request.add(newSoda);
                }
                break;
              default:
                {
                  print('\nYour request is not valid!\n');
                  break;
                }
            }
          } else if (order == 3) {
            print(
                '\n\nPlease, choose any additional to your order:\n\n1 - Beer;\n\n2 - Drinks;\n\n3 - French fries');
            var selectedOption = int.parse(stdin.readLineSync()!);
            switch (selectedOption) {
              case 1:
                {
                  Additionals newAdditional = Additionals(5.8, 2, 'Blond beer');
                  request.add(newAdditional);
                }
                break;
              case 2:
                {
                  Additionals newAdditional = Additionals(17.8, 1, 'Mojito');
                  request.add(newAdditional);
                }
                break;
              case 3:
                {
                  Additionals newAdditional =
                      Additionals(22.5, 1, 'French fries');
                  request.add(newAdditional);
                }
                break;
              default:
                {
                  print('\nYour request is not valid!\n');
                  break;
                }
            }
          } else {
            print('\nYour request is not valid!\n');
            break;
          }
        }
        break;
      case 2:
        {
          request.forEach((object) {
            print(object);
          });
        }
        break;
      case 3:
        {
          print(
              '\n\nRequest ended! Thank you for shopping at Daniela&André Pizzeria!\n\n');
          var totalRequest = 0.0;
          request.forEach((object) {
            print(object);
            totalRequest += object.price;
          });

          print('\n\nTotal of your request: ${totalRequest}');
        }
        break;
      default:
        {
          print('\nYour request is not valid!\n');
          break;
        }
    }
  }
}
