import 'package:flutter/material.dart';
import 'package:flutter_weight_tracker/models/records.dart';
import 'package:flutter_weight_tracker/view-model/controller.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RecordListTile extends StatelessWidget {
  final Records records;
  RecordListTile({super.key, required this.records, required record});

  final Controller _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(records.weight.toString()),
      leading: Text(DateFormat("EEE, MMM d").format(records.dateTime)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: Colors.purple,
              )),
          IconButton(
              onPressed: () => _controller.deleteRecord(records),
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ))
        ],
      ),
    );
  }
}
