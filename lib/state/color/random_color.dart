import 'dart:math';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'random_color.g.dart';

@riverpod
class RandomColor extends _$RandomColor {
  @override
  Color build() {
    return Colors.primaries[Random().nextInt(
      Colors.primaries.length,
    )];
  }

  void changeColor() {
    state = Colors.primaries[state.hashCode % Colors.primaries.length];
  }

  List<Color> colorList = [Colors.redAccent, Colors.greenAccent, Colors.blueAccent];

  void getColor() {
    state = colorList[Random().nextInt(colorList.length)];
  }
}
