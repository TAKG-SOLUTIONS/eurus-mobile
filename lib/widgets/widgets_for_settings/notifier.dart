import 'package:eurus_mobile/widgets/widgets_for_settings/list_data.dart';
import 'package:flutter/foundation.dart';

class SingleNotifier extends ChangeNotifier {
  String _currentLanguage = languages[0];
  SingleNotifier();

  String get currentLanguage => _currentLanguage;

  updateLanguage(String value){
    if (value != _currentLanguage){
      _currentLanguage = value;
      notifyListeners();
    }
  }
}


class MultipleNotifier extends ChangeNotifier {
  final List<String> _selectItems;
  MultipleNotifier(this._selectItems);
  List<String> get selectedItems => _selectItems;

  bool isHaveItem(String value) => _selectItems.contains(value);

  addItem(String value) {
    if(!isHaveItem(value)) {
      _selectItems.add(value);
      notifyListeners();
    }
  }

  removeItem(String value) {
    if(isHaveItem(value)) {
      _selectItems.remove(value);
      notifyListeners();
    }
  }
}

class SingleNotifierCurrency extends ChangeNotifier {
  String _currentCurrency = currency[0];
  SingleNotifierCurrency();

  String get currentCurrency => _currentCurrency;

  updateCurrency(String value){
    if (value != _currentCurrency){
      _currentCurrency = value;
      notifyListeners();
    }
  }
}