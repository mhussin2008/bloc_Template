// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Screens/app.dart';
import 'bloc_Components/bloc_observer.dart';

void main() {
  Bloc.observer = const AppBlocObserver();
  runApp( const App());
}

