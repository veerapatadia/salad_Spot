import 'package:flutter/material.dart';

class GlobalData {
  static button({required String text}) {
    return Container(
      height: 45,
      width: 115,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(40),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 17.5,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static button2({required dynamic icon}) {
    return Container(
      height: 23,
      width: 23,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Icon(
        icon,
        color: Colors.white,
        size: 15,
      ),
    );
  }
}
