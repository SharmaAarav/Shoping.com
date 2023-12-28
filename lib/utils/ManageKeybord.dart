import 'package:flutter/material.dart';

class keyBordUtil {
  static void hideKeybord(BuildContext context) {
    FocusScopeNode curruntFocus = FocusScope.of(context);
    if (!curruntFocus.hasPrimaryFocus) {
      curruntFocus.unfocus();
    }
  }
}
