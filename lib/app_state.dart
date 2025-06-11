import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _publisher = prefs.getStringList('ff_publisher') ?? _publisher;
    });
    _safeInit(() {
      _email = prefs.getString('ff_email') ?? _email;
    });
    _safeInit(() {
      _password = prefs.getString('ff_password') ?? _password;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _urlPhoto = [];
  List<String> get urlPhoto => _urlPhoto;
  set urlPhoto(List<String> value) {
    _urlPhoto = value;
  }

  void addToUrlPhoto(String value) {
    urlPhoto.add(value);
  }

  void removeFromUrlPhoto(String value) {
    urlPhoto.remove(value);
  }

  void removeAtIndexFromUrlPhoto(int index) {
    urlPhoto.removeAt(index);
  }

  void updateUrlPhotoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    urlPhoto[index] = updateFn(_urlPhoto[index]);
  }

  void insertAtIndexInUrlPhoto(int index, String value) {
    urlPhoto.insert(index, value);
  }

  List<String> _publisher = [];
  List<String> get publisher => _publisher;
  set publisher(List<String> value) {
    _publisher = value;
    prefs.setStringList('ff_publisher', value);
  }

  void addToPublisher(String value) {
    publisher.add(value);
    prefs.setStringList('ff_publisher', _publisher);
  }

  void removeFromPublisher(String value) {
    publisher.remove(value);
    prefs.setStringList('ff_publisher', _publisher);
  }

  void removeAtIndexFromPublisher(int index) {
    publisher.removeAt(index);
    prefs.setStringList('ff_publisher', _publisher);
  }

  void updatePublisherAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    publisher[index] = updateFn(_publisher[index]);
    prefs.setStringList('ff_publisher', _publisher);
  }

  void insertAtIndexInPublisher(int index, String value) {
    publisher.insert(index, value);
    prefs.setStringList('ff_publisher', _publisher);
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
    prefs.setString('ff_email', value);
  }

  String _password = '';
  String get password => _password;
  set password(String value) {
    _password = value;
    prefs.setString('ff_password', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
