import 'package:flutter/material.dart';

ButtonStyle appPrimaryButton = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(const Color(0xff276EF1)),
  overlayColor: MaterialStateProperty.all(Colors.blue),
  elevation: MaterialStateProperty.all(8),
  fixedSize: MaterialStateProperty.all(const Size(240, 40)),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10)
    )
  )
);
