

import 'package:flutter/material.dart';

InputDecoration AppInputStyle(label) {
  return InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
      border: OutlineInputBorder(),
      filled: true,
      fillColor: Colors.white,
      labelText: label

  );
}