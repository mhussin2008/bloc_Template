import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc_Components/bloc_events.dart';
import '../Screens/dataview.dart';
class DataPage extends StatelessWidget {
  /// {@macro Data_page}
   DataPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DataBloc(),
      child:   DataView(),
    );
  }
}