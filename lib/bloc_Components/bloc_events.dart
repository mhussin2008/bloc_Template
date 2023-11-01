import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/data_layer.dart';

/// Event being processed by [DataBloc].
abstract class DataEvent {}

/// Notifies bloc to increment state.
class DataIncrementPressed extends DataEvent {}

/// Notifies bloc to decrement state.
class DataDecrementPressed extends DataEvent {}

class DepthDecrementPressed extends DataEvent {}
class ToggleTheme extends DataEvent{}
/// {@template Data_bloc}
/// A simple [Bloc] that manages an `int` as its state.
/// {@endtemplate}
class DataBloc extends Bloc<DataEvent, AppData> {
  /// {@macro Data_bloc}
  DataBloc() : super(AppData(0, 0,false)) {
    on<DataIncrementPressed>((event, emit) {
      //yield DataEvent(DataValue: state.DataValue + 1);
      emit(AppData(state.count + 1, state.depth,state.themeState));

      //emit(state.addOne());
    });
    on<DataDecrementPressed>((event, emit) {
      emit(AppData(state.count - 1, state.depth,state.themeState));
    });

    on<DepthDecrementPressed>((event, emit) {
      emit(AppData(state.count, state.depth + 1,state.themeState));
    });

    on<ToggleTheme>((event, emit) {
      emit(AppData(state.count, state.depth,!(state.themeState)));
    });




  }
  // void changeTheme() {
  //   emit(AppData.withTheme(state.count, state.depth ,AppData.Theme2));
  // }
  //
  // void returnTheme() {
  //   emit(AppData.withTheme(state.count, state.depth ,AppData.Theme1));
  // }

}
