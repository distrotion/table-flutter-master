import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//--------------------------------------

import 'MainBody.dart';
import 'bloc/bloc-data01/appBlocObserver.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(MyApp()),
    blocObserver: AppBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Table test',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Table test'),
        ),
        body: BlocTableBody());
  }
}
