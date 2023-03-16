import 'package:flutter/material.dart';

InputDecoration formdec(String hint) {
  return InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: Colors.transparent),
      borderRadius: BorderRadius.circular(50),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: Colors.lightBlue),
      borderRadius: BorderRadius.circular(50),
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: Colors.grey),
      borderRadius: BorderRadius.circular(50),
    ),
    fillColor: Colors.grey.withOpacity(0.1),
    filled: true,
    hintText: hint,
  );
  
}