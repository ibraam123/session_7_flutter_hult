import 'package:flutter/material.dart';

import 'custom_container.dart';

class ListViewAndListViewBuilder extends StatelessWidget {
  const ListViewAndListViewBuilder({super.key, required this.isBuilder});

  // Implement ListView, ListView.builder
  final bool isBuilder;

  @override
  Widget build(BuildContext context) {
    return isBuilder ? _buildListViewBuilder() : _buildListView();
  }

  Widget _buildListView() {
    return ListView(
      children: [
        for (int i = 0; i < 10; i++) CustomContainer(index: i),
      ],
    );
  }

  Widget _buildListViewBuilder() {
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (context, index) => CustomContainer(index: index),
    );
  }


}
