import 'package:flutter/foundation.dart';

class FavouriteProvider extends ChangeNotifier {
  List<dynamic> _selectedItems = [];

  List<dynamic> get selectedItems => _selectedItems;

  void addItems(dynamic value) {
    selectedItems.add(value);
    notifyListeners();
  }

  void removeItems(dynamic value) {
    selectedItems.remove(value);
    notifyListeners();
  }
}
