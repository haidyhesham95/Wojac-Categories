import 'package:flutter/material.dart';

extension DeviceInfo on BuildContext {
  Size get _size => MediaQuery.of(this).size;

 double get screenWidth => _size.width;
 double get screenHeight => _size.height;
}
