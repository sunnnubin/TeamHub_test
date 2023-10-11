import 'package:flutter/material.dart';

/// 버튼 위젯입니다.
/// [width] => 버튼 가로길이 Notnull<br>
/// [hieght] => 버튼 세로길이 Notnull<br>
/// [backgroudcolor] => 버튼 배경색 Notnull<br>
/// [text] => 버튼 텍스트<br>
/// [fontsize] => 버튼 텍스트 크기<br>
/// [ontap] => 버튼 클릭리스너<br>
/// [icon] => 버튼 아이콘 <br>
class ButtonWidget extends StatelessWidget {
  final double width;
  final double hieght;
  final String? text;
  final double? fontsize;
  final VoidCallback? ontap;
  final Color backgroudcolor;
  final IconData? icon;
  final bool isicon;
  const ButtonWidget({
    super.key,
    required this.width,
    required this.hieght,
    required this.backgroudcolor,
    required this.isicon,
    this.text,
    this.fontsize,
    this.ontap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        width: width,
        height: hieght,
      ),
    );
  }
}
