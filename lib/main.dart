import 'package:flutter/material.dart';
import 'package:know_our_school/View/school_info.dart';
import 'package:know_our_school/ViewModel/view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SchoolProvider(),
      child: MaterialApp(
        title: 'Know Our School',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: const SchoolInfo(),
      ),
    );
  }
}
