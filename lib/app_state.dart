import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _CatNames = prefs.getStringList('ff_CatNames') ?? _CatNames;
    _favouriteNames =
        prefs.getStringList('ff_favouriteNames') ?? _favouriteNames;
  }

  late SharedPreferences prefs;

  List<String> _CatNames = [
    'Apple',
    'Mango',
    'Orange',
    'Pinaple',
    'Banana',
    'watermalon',
    'strawbery'
  ];
  List<String> get CatNames => _CatNames;
  set CatNames(List<String> _value) {
    notifyListeners();

    _CatNames = _value;
    prefs.setStringList('ff_CatNames', _value);
  }

  void addToCatNames(String _value) {
    notifyListeners();
    _CatNames.add(_value);
    prefs.setStringList('ff_CatNames', _CatNames);
  }

  void removeFromCatNames(String _value) {
    notifyListeners();
    _CatNames.remove(_value);
    prefs.setStringList('ff_CatNames', _CatNames);
  }

  List<String> _favouriteNames = [];
  List<String> get favouriteNames => _favouriteNames;
  set favouriteNames(List<String> _value) {
    notifyListeners();

    _favouriteNames = _value;
    prefs.setStringList('ff_favouriteNames', _value);
  }

  void addToFavouriteNames(String _value) {
    notifyListeners();
    _favouriteNames.add(_value);
    prefs.setStringList('ff_favouriteNames', _favouriteNames);
  }

  void removeFromFavouriteNames(String _value) {
    notifyListeners();
    _favouriteNames.remove(_value);
    prefs.setStringList('ff_favouriteNames', _favouriteNames);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
