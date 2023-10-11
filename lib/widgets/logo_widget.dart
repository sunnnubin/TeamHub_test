import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final double width;
  final double hieght;
  const LogoWidget({
    super.key,
    required this.width,
    required this.hieght,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: hieght,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Image.asset('./assets/logo/TeamHub_Logo.png'),
      ),
    );
  }
}
