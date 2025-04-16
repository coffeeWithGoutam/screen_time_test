import 'package:flutter/material.dart';

extension Responsive on BuildContext {
  double rw() {
    return MediaQuery.of(this).size.width;
  }

  double rh() {
    return MediaQuery.of(this).size.height;
  }

  double setRw(double value) {
    return MediaQuery.of(this).size.width * value;
  }

  double setRh(double value) {
    return MediaQuery.of(this).size.height * value;
  }
}
