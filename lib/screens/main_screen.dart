import 'package:flutter/material.dart';
import 'package:teamhub_test/widgets/logo_widget.dart';
import 'package:teamhub_test/widgets/main_screen_widget/grid_view_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            LogoWidget(
              width: 160,
              hieght: 100,
            ),
            Text(
              "asd",
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(
              height: 300,
              width: 500,
              child: GridViewWidget(),
            )
          ],
        ),
      ),
    );
  }
}
