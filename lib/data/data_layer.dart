import 'package:flutter/material.dart';

class AppData{
  final int _count;
  final int _depth;
  final bool themeState;
  AppData(this._count,this._depth,this.themeState);
  int get count => _count;
  int get depth => _depth;

  @override
  // TODO: implement hashCode
  int get hashCode => super.hashCode;

}