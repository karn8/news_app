import 'package:flutter/material.dart';

final ButtonStyle flatButtonStyleYes = TextButton.styleFrom(
  primary: Colors.white,
  backgroundColor: Colors.green,
  minimumSize: const Size(10, 20),
  padding: const EdgeInsets.symmetric(horizontal: 4.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);

final ButtonStyle flatButtonStyleNo = TextButton.styleFrom(
  primary: Colors.white,
  backgroundColor: Colors.red,
  minimumSize: const Size(10, 20),
  padding: const EdgeInsets.symmetric(horizontal: 4.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);