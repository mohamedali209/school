import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:know_our_school/Model/model.dart';

class SchoolProvider with ChangeNotifier {
  School _school = School(name: '', address: '', students: '', teachers: '');

  School get school => _school;

  Future<void> loadSchoolData() async {
    final String response = await rootBundle.loadString('assets/school_data.json');
    final data = await json.decode(response);
    _school = School(
      name: data['School Name'],
      address: data['School Address'],
      students: data['Number of Students'],
      teachers: data['Number of Teachers'],
    );
    notifyListeners();
  }
}
