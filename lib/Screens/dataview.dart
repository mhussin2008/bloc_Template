import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc_Components/bloc_events.dart';
import '../data/data_layer.dart';
class DataView extends StatelessWidget {
  /// {@macro Data_view}
  const DataView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data')),
      body: Center(
        child:
        BlocBuilder<DataBloc, AppData>(
          builder: (context, appData) {
            return Column(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  color: appData.themeState?Colors.blue:Colors.yellow,
                ),
                Text(
                  '${appData.count}',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const Spacer(),
                Text(
                  '${appData.depth}',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                ElevatedButton(onPressed: (){

                  context.read<DataBloc>().add(ToggleTheme());
                  print(appData.hashCode);
                }, child: Text('Get HashCode'))
              ],
            );
          },
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.toggle_off),
            onPressed: () {
              context.read<DataBloc>().add(ToggleTheme());
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.toggle_on),
            onPressed: () {

            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {

              context.read<DataBloc>().add(DataIncrementPressed());
            },
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              context.read<DataBloc>().add(DataDecrementPressed());
            },
          ),
          const SizedBox(height: 4),

        ],
      ),
    );
  }
}