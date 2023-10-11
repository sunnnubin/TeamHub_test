import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teamhub_test/models/todo_data.dart';

class ListController extends GetxController {
  ///Todo List
  final List<TodoData> _todolist = [];

  List<TodoData> get listData => _todolist;

  ///데이터 입력함수
  void addListTitle(
    String listTitle,
  ) {
    _todolist.add(
      TodoData(
        projectName: listTitle,
        projerctData: '',
        date: DateTime.now(),
        region: '',
        part: '',
        language: '',
        team: '',
      ),
    );
    debugPrint(listTitle);
    update();
  }

  ///완료리스트 삭제함수
  void doneRemove(int index) {
    _todolist.removeAt(index);
    update();
  }
}
