import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc-data01/event.dart';
import 'data/model.dart';
import 'data_dummy.dart';
import 'widget/Table01.dart';

class BlocTableBody extends StatelessWidget {
  /// {@macro counter_page}
  const BlocTableBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => DataSetBloc(),
        child: BlocBuilder<DataSetBloc, List<dataset>>(
          builder: (context, data) {
            return TableMaster01MAIN(data: data);
          },
        ));
  }
}
