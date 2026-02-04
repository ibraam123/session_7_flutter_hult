import 'package:flutter/material.dart';

/*
Topics explanation:
  Part one - Flutter Layout Widgets
    1 - Column Widget: The Column widget in Flutter is used to arrange its child widgets in a vertical direction. It is a part of the Flutter layout system and is commonly used to create vertical layouts. The Column widget takes a list of child widgets and displays them one below the other.
    2 - MainAxisAlignment: MainAxisAlignment is an enum in Flutter that defines how the children of a Column or Row widget are aligned along the main axis (vertical for Column and horizontal for Row). It provides several options such as start, end, center, spaceBetween, spaceAround, and spaceEvenly to control the alignment of child widgets.
    3 - CrossAxisAlignment: CrossAxisAlignment is another enum in Flutter that defines how the children of a Column or Row widget are aligned along the cross axis (horizontal for Column and vertical for Row). It provides options such as start, end, center, stretch, and baseline to control the alignment of child widgets.
    4 - Row Widget: The Row widget in Flutter is used to arrange its child widgets in a horizontal direction. Similar to the Column widget, it is part of the Flutter layout system and is commonly used to create horizontal layouts. The Row widget takes a list of child widgets and displays them side by side.
  Part two - Advanced Layout Widgets
    5 - Stack Widget (Explain stack container |_|): The Stack widget in Flutter is used to overlay multiple child widgets on top of each other. It allows you to position widgets relative to each other using the Positioned widget or by using alignment properties. The Stack widget is useful for creating complex layouts where widgets need to overlap or be layered.
    6 - Positioned Widget: The Positioned widget in Flutter is used within a Stack widget to position its child widget at a specific location. It allows you to specify the distance from the top, bottom, left, and right edges of the Stack. This widget is useful for creating custom layouts where precise positioning of widgets is required.
    7 - ListView Widget: The ListView widget in Flutter is used to create a scrollable list of widgets. It is commonly used to display a large number of items in a vertical or horizontal list. The ListView widget can be created using various constructors, such as ListView.builder, ListView.separated, and ListView.custom, to efficiently build and manage the list items.
    8 - ListView.builder : The ListView.builder constructor in Flutter is used to create a scrollable list of widgets that are built on demand. It is particularly useful for displaying large lists of items, as it only builds the widgets that are currently visible on the screen, improving performance and reducing memory usage. The ListView.builder takes an itemCount parameter to specify the number of items in the list and an itemBuilder function to define how each item should be built.
* */




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Widgets' , style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold , color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: BasicLayout() ,

      ),
    );
  }
}

class BasicLayout extends StatelessWidget {
  const BasicLayout({super.key});
  // Implement Column, Row, MainAxisAlignment, CrossAxisAlignment here

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.star, color: Colors.red, size: 50),
            Icon(Icons.star, color: Colors.green, size: 50),
            Icon(Icons.star, color: Colors.blue, size: 50),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.circle, color: Colors.orange, size: 50),
            Icon(Icons.circle, color: Colors.purple, size: 50),
            Icon(Icons.circle, color: Colors.yellow, size: 50),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          'Flutter Basic Layout Widgets',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class StackAndPositioned extends StatelessWidget {
  const StackAndPositioned({super.key});
  // Implement Stack, Positioned

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 50,
          left: 50,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue.withValues(alpha: 0.5),
          ),
        ),
        Positioned(
          top: 100,
          left: 100,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red.withValues(alpha: 0.5),
          ),
        ),
        Positioned(
          top: 150,
          left: 50,
          child: Text(
            'Flutter Advanced Layout Widgets',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ],
    );
  }
}

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

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    this.index = 0,
  });
  final int index ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.all(8),
      color: Colors.primaries[index % Colors.primaries.length],
      child: Center(
        child: Text(
          'Item $index',
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}




