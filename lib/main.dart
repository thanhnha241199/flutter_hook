import 'package:flutter/material.dart';
import 'package:flutter_hook/use_effect.dart';
import 'package:flutter_hook/use_state.dart';

import 'blue_square_hook.dart';
import 'use_reducer.dart';
import 'use_stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UseStreamExample(),
    );
  }
}
