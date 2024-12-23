import 'package:flutter/material.dart';

class ManageKeyboard {
  static void manage(BuildContext context) {
    // Get the current FocusNode
    FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}
