import 'package:flutter/material.dart';
import 'package:teamhub_test/widgets/main_screen_widget/grid_view_item.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: const [
        GridViewItem(title: "test", subtitle: "test", icon: Icons.home),
        GridViewItem(title: "test", subtitle: "test", icon: Icons.home),
        GridViewItem(title: "test", subtitle: "test", icon: Icons.home),
        GridViewItem(title: "test", subtitle: "test", icon: Icons.home),
      ],
    );
  }
}
