import 'package:flutter/material.dart'
    show ChangeNotifier, Color, Colors, VoidCallback;

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  /// Random quote displayed on menu.
  String _inspirationalQuote = '';
  String get inspirationalQuote => _inspirationalQuote;
  set inspirationalQuote(String value) {
    _inspirationalQuote = value;
  }
}
