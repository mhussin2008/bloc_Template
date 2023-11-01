import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc_Components/bloc_events.dart';
import '../data/data_layer.dart';
import 'dataview.dart';
class AppView extends StatelessWidget {
  /// {@macro app_view}
   const AppView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DataBloc, AppData>(
      builder: (context, appData) {
        return   MaterialApp(
          theme: appData.themeState?ThemeData.dark():ThemeData.light(),
          home:// DataPage(),
          const DataView()
        );
      },
    );
  }
}