import 'package:flutter/material.dart';

class GoTrashService {
  IconData image;
  Color color;
  String title;

  GoTrashService({this.image, this.title, this.color});
}
class Trash{
  String title;
  String image;
  Trash({this.title, this.image});
}