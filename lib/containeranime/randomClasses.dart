import 'dart:math';
import 'package:flutter/material.dart';

double randomBorderradius(){
  return Random().nextDouble()*64;
}

double randomMargin(){
  return Random().nextDouble()*64;

}

Color randomColor(){
   return Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));
}