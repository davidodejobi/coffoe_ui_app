import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final detailProvider = ChangeNotifierProvider(
  (ref) => DetailController(),
);

class DetailController extends ChangeNotifier {
  final List<String> _size = [
    'S',
    'M',
    'L',
  ];
  List<String> get size => _size;
  String _selectedSize = 'S';
  String get selectedSize => _selectedSize;

  void selectSize(int index) {
    _selectedSize = _size[index];
    notifyListeners();
  }
}
