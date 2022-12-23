
import 'package:flutter/material.dart';

ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(15),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
  );
}