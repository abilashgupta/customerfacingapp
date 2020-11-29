import 'package:flutter/material.dart';
// OTP Page

const otp = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 12.0),
  isDense: true,
  filled: true,
  border: InputBorder.none,
  fillColor: Colors.amber,
  counterText: '',
);
// personaldetail
const cardbar = InputDecoration(
  hintStyle: TextStyle(fontSize: 14.0, letterSpacing: 1.0),
  contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
  fillColor: Color(0xFFFFF9C4),
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(25.0)),
    borderSide: BorderSide(color: Colors.transparent, width: 2.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(25.0)),
    borderSide: BorderSide(color: Colors.transparent, width: 2.0),
  ),
);

//  Add Menu Item styling
const addmenustyle = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
  isDense: true,
);
