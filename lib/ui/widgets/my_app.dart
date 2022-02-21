import 'package:flutter/material.dart';
import 'package:flutter_mvvm_counter/domain/blocs/users_bloc.dart';
import 'package:provider/provider.dart';

import 'example_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Provider(
        create: (_) => UsersBloc(),
        child: const ExampleWidget()
      ),
    );
  }
}