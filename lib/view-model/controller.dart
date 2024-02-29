import 'package:flutter_weight_tracker/models/records.dart';
import 'package:get/get.dart';

class Controller extends GetxController{
  var records = <Records> [
    Records(weight: 80, dateTime: DateTime.now())
  ].obs;
  

  void addRecord(double weight, DateTime dateTime, String notE){
    records.add(Records(weight: weight, dateTime: DateTime.now()));
  }

  void deleteRecord(Records record){
    records.remove(record);
  }
}