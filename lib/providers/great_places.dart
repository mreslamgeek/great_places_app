import 'package:flutter/foundation.dart';
import 'dart:io';

import '../models/place.dart';

class GreatePlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items => [..._items];

  void addPlace(String title, File pickedImage) {
    final newPlace = Place(
      id: DateTime.now().toString(),
      title: title,
      location: null,
      image: pickedImage,
    );

    _items.add(newPlace);
    notifyListeners();
  }
}
