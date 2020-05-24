import 'package:flutter/material.dart';

class GameButton {
  final id;
  String text;
  Color bg;
  bool enabled;
  Image img;

  GameButton({ this.id, this.text="", this.img, this.bg, this.enabled = true});
}