import 'package:flutter/foundation.dart';

class SeatsProvider extends ChangeNotifier {
  String _selectedItems = '';

  String get selectedItems => _selectedItems;

  void addItems(String value) {
    _selectedItems = value;
    notifyListeners();
  }

  void removeItems(String value) {
    _selectedItems = value;
    notifyListeners();
  }
}
