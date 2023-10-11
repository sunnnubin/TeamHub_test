import 'package:flutter/material.dart';

class GridViewItem extends StatelessWidget {
  final Color? backgroundColor;
  final String title;
  final String subtitle;
  final IconData icon;
  const GridViewItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        //! 크기 임의 정의
        width: 300,
        height: 300,
        decoration: BoxDecoration(color: backgroundColor ?? Colors.white),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(title),
                    Text(subtitle),
                  ],
                ),
              ),
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(icon),
                ))
          ],
        ),
      ),
    );
  }
}
