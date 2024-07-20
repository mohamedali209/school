import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:know_our_school/Model/model.dart';

class SchoolProvider extends ChangeNotifier {
  School _school = School(name: '', address: '', students: '', teachers: '');

  School get school => _school;

  Future<void> loadSchoolData() async {
    final String response = await rootBundle.loadString('lib/JSONdata/SchoolData.json');
    final List<dynamic> data = json.decode(response);
    _school = School.fromJson(data[0]);
    notifyListeners();
  }
}
