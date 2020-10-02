import 'package:flutter/material.dart';

class Sizes {
  static isWeb(context) => MediaQuery.of(context).size.width > 840;
  static final mobileWidth = 280.0;
  static final webWidth = 400.0;
  static final webHeigth = 350.0;
  static final mobileHeigth = 500.0;
  static final width = 900.0;
  static isFooterWeb(context) => MediaQuery.of(context).size.width > 840;
}
