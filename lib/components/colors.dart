import 'dart:ui';
import 'package:flutter/material.dart';

final Color background = const Color.fromARGB(255, 255, 255, 255);
final Gradient backgroundGradient = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color.fromARGB(255, 26, 0, 219), Color.fromARGB(255, 176, 0, 170)],
);

final Gradient appBarGradient = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color.fromARGB(255, 255, 255, 255),
    Color.fromARGB(255, 255, 255, 255),
  ],
);
final Gradient backgroundNavBottom = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Colors.black, Colors.black],
);

final Color iconColor = Colors.blueGrey;
final Color iconTitleColor = Colors.black;
final Gradient iconNavBottomColor = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color.fromARGB(255, 26, 0, 219), Color.fromARGB(255, 176, 0, 170)],
);

final Color textColor = Colors.blueGrey;
final Color titleColor = Colors.black;
