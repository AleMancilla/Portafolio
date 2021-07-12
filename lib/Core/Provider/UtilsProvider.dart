import 'package:flutter/material.dart';
import 'package:portafolio/Utils/UtilsDesign.dart';

class UtilsProvider with ChangeNotifier {
  /// [COLOR PROVIDER]
  Color _primaryColor = backGroundBoddyColor;
  Color get primaryColor => this._primaryColor;
  set primaryColor(Color color) {
    this._primaryColor = color;
    notifyListeners();
  }

  /// [INDEX PAGE]
  IndexPage _indexPage = IndexPage.About;
  IndexPage get indexPage => this._indexPage;
  set indexPage(IndexPage index) {
    this._indexPage = index;
    notifyListeners();
  }
}
