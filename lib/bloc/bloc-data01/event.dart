import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model.dart';
import '../../data_dummy.dart';

/// Event being processed by [CounterBloc].
abstract class DataSetEvent {}

/// Notifies bloc to increment state.
class GetDataPressed extends DataSetEvent {}

class CounterValue extends DataSetBloc {
  final int value;
  CounterValue(this.value);
}

class DataSetBloc extends Bloc<DataSetEvent, List<dataset>> {
  /// {@macro counter_bloc}
  DataSetBloc() : super(<dataset>[]) {
    on<GetDataPressed>((event, emit) {
      return _getdata([], emit);
    });
  }
  Future<void> _getdata(
      List<dataset> toAdd, Emitter<List<dataset>> emit) async {
    emit(data_test);
  }
}
