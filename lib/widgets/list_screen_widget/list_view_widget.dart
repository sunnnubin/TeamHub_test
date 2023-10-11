import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teamhub_test/providers/list_controller.dart';
import 'package:teamhub_test/widgets/list_screen_widget/list_item_widget.dart';

//todo 지금 리스트에 한가지만 입력이됨. 다수의 데이터를 넣는방법을 생각해보기.
class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

final controller = Get.put(ListController());

class _ListScreenState extends State<ListScreen> {
  /// 텍스트필드 컨트롤러
  final _todoTextEditController = TextEditingController();

  ///필드 값 리스트 추가함수
  void addTodo() {
    var todotext = _todoTextEditController;
    controller.addListTitle(todotext.text);
    todotext.clear();
  }

  @override
  void dispose() {
    super.dispose();
    _todoTextEditController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var listdata = controller.listData;
    return Scaffold(
      body: Center(
        child: ListView.separated(
          itemCount: listdata.length,
          separatorBuilder: (context, index) => const SizedBox(
            height: 300,
          ),
          itemBuilder: (context, index) {
            var todo = listdata[index];
            return ListItemWidget(
              index: index,
              uniName: "대학교이름",
              date: '${todo.date}',
              title: "임의의 대회 참여 모집 공고글 제목",
              gradeText: "1단계",
              majorText: "전공자 우대",
              ageText: "23살 이하",
              ragionText: "전라남도",
              tecText1: "프론트엔드",
              firstColor: Colors.green,
              secondColor: Colors.yellow,
              thirdColor: Colors.purple,
            );
          },
        ),
      ),
      // bottomSheet: Padding(
      //   padding: const EdgeInsets.all(10),
      //   child: TextField(
      //     controller: _todoTextEditController,
      //     decoration: InputDecoration(
      //       isDense: true,
      //       border: const OutlineInputBorder(),
      //       labelText: '한줄 To-do 입력하기',
      //       suffix: TextButton(
      //         onPressed: () {
      //           addTodo();
      //         },
      //         child: const Text(
      //           '추가',
      //           style: TextStyle(
      //             color: Colors.black,
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
