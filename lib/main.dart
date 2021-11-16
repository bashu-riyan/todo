import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/task_sreen.dart';

import 'models/task_data.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) { return TaskData(); },
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
