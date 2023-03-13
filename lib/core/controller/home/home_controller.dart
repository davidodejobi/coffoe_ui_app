import 'package:coffoe_ui_app/models/coffoe_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final coffeeProvider = ChangeNotifierProvider(
  (ref) => CoffeeController(),
);

class CoffeeController extends ChangeNotifier {
  String _selectedCoffee = 'Cappuccino';
  final List<String> _coffees = [
    'Cappuccino',
    'Espresso',
    'Latte',
    'Americano',
    'Mocha',
    'Macchiato',
    'Flat White',
    'Cortado',
    'Affogato',
    'Frappuccino',
  ];

  final List<CoffeeModel> _availCoffoes = [
    CoffeeModel(
      name: 'Espresso',
      image: 'coffoe1',
      additionals: 'Milk, Sugar',
      description: 'A strong and rich coffee served in a small cup.',
      price: '\$3.50',
    ),
    CoffeeModel(
      name: 'Latte',
      image: 'coffoe2',
      additionals: 'Vanilla syrup, Whipped cream',
      description: 'A creamy espresso drink topped with steamed milk foam.',
      price: '\$4.00',
    ),
    CoffeeModel(
      name: 'Cappuccino',
      image: 'coffoe3',
      additionals: 'Cinnamon, Cocoa powder',
      description:
          'A classic Italian espresso drink with frothy milk and foam.',
      price: '\$3.75',
    ),
    CoffeeModel(
      name: 'Mocha',
      image: 'coffoe4',
      additionals: 'Chocolate syrup, Whipped cream',
      description: 'A decadent espresso drink with steamed milk and chocolate.',
      price: '\$4.25',
    ),
  ];

  String get selectedCoffee => _selectedCoffee;
  List<String> get coffees => _coffees;
  List<CoffeeModel> get availCoffees => _availCoffoes;

  void selectCoffoe(int index) {
    _selectedCoffee = _coffees[index];
    notifyListeners();
  }
}
