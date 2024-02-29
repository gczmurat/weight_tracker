import 'package:flutter/material.dart';
import 'package:flutter_weight_tracker/view-model/controller.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:modern_textfield/modern_textfield.dart';
import 'package:numberpicker/numberpicker.dart';

class AddRecordView extends StatefulWidget {
  const AddRecordView({super.key});

  @override
  State<AddRecordView> createState() => _AddRecordViewState();
}

class _AddRecordViewState extends State<AddRecordView> {
  Controller _controller = Get.find();
  int _selectedWeight = 70;
  DateTime? _selectedDate = DateTime.now();
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 30,
              color: Colors.white,
            )),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Add New Record",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            child: Row(
              children: [
                const Icon(
                  Icons.confirmation_number_outlined,
                  size: 50,
                  color: Colors.purple,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    NumberPicker(
                      itemHeight: 60,
                      itemCount: 3,
                      textStyle: TextStyle(
                          color: Colors.purple.shade100, fontSize: 20),
                      selectedTextStyle: const TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontSize: 26),
                      axis: Axis.horizontal,
                      minValue: 40,
                      maxValue: 180,
                      value: _selectedWeight,
                      onChanged: (value) {
                        setState(() {
                          _selectedWeight = value;
                        });
                      },
                    ),
                    const Icon(
                      Icons.arrow_upward,
                      color: Colors.purple,
                      size: 20,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () async {
              _selectedDate = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  initialDate: DateTime.now());
              setState(() {});
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: Icon(
                      Icons.date_range_outlined,
                      size: 50,
                      color: Colors.purple,
                    ),
                  ),
                  Expanded(
                      child: Text(
                    DateFormat("EEE, MMM d").format(_selectedDate!),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 22),
                  ))
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 25),
                child: ModernTextField(
                  backgroundColor: Colors.transparent,
                  iconBackgroundColor: Colors.purple,
                  customLeadingIcon: Icons.abc_outlined,
                  leadingIconSize: 35,
                  hintText: "Add your note ...",
                  textEditingController: textController,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                _controller.addRecord(_selectedWeight.toDouble(),
                    _selectedDate!, textController.text);
                    Get.back();
              },
              child: const Text("Save Record"))
        ],
      ),
    );
  }
}
