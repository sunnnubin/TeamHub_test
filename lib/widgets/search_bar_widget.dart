import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teamhub_test/providers/text_controller.dart';

class SearchBarWidget extends StatefulWidget {
  final double height;
  final String? hintText;
  const SearchBarWidget({
    super.key,
    required this.height,
    this.hintText,
  });

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

final controller = Get.find<TextController>();

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: TextField(
        controller: controller.textController,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          labelText: widget.hintText ?? "",
        ),
      ),
    );
  }
}
