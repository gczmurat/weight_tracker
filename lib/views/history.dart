import 'package:flutter/material.dart';
import 'package:flutter_weight_tracker/models/records.dart';
import 'package:flutter_weight_tracker/view-model/controller.dart';
import 'package:flutter_weight_tracker/widgets/record_list_tile.dart';
import 'package:get/get.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({super.key});

  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    List<Records> records = _controller.records;
    return Obx(() => Scaffold(
      appBar: AppBar(
        title: const Text("History",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24)),
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 45,
      ),
      body: records.isEmpty ? const Center(child: Text("Lütfen bir kayıt giriniz"),) : ListView(
          physics: const BouncingScrollPhysics(),
          children: records
              .map((records) => RecordListTile(
                    records: records,
                    record: null,
                  ))
              .toList()),
    ));
  }
}
