import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'appview.dart';
import '../bloc_Components/bloc_events.dart';


class App extends StatelessWidget {
  /// {@macro app}
   const App({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DataBloc(),
      child:  const AppView(),
    );
  }
}