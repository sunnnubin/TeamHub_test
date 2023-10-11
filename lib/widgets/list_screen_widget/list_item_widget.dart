import 'package:flutter/material.dart';

///리스트 아이템 위젯
class ListItemWidget extends StatelessWidget {
  final String uniName;
  final String title;
  final Color firstColor;
  final Color secondColor;
  final Color thirdColor;
  final String gradeText;
  final String majorText;
  final String ageText;
  final String ragionText;
  final String tecText1;
  final String? tecText2;
  final String? tecText3;
  final int index;
  final String date;

  const ListItemWidget({
    super.key,
    required this.index,
    required this.date,
    required this.uniName,
    required this.title,
    required this.firstColor,
    required this.secondColor,
    required this.thirdColor,
    required this.gradeText,
    required this.ageText,
    required this.ragionText,
    required this.tecText1,
    this.tecText2,
    this.tecText3,
    required this.majorText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 350,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(uniName),
                  Text(date),
                ],
              ),
              Text(title),
              Row(
                children: [
                  Text(gradeText),
                  Text(majorText),
                  Text(ageText),
                  Text(ragionText),
                ],
              ),
              Row(
                children: [
                  BgcGreyWidget(text: tecText1),
                  BgcGreyWidget(text: tecText2),
                  BgcGreyWidget(text: tecText3),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BgcGreyWidget extends StatelessWidget {
  const BgcGreyWidget({
    super.key,
    this.text,
  });

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Text(text ?? ""),
      ),
    );
  }
}
