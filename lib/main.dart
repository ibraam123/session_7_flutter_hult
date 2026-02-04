import 'package:flutter/material.dart';

/*
Topics explanation:
1 - Column Widget: The Column widget in Flutter is used to arrange its child widgets in a vertical direction. It is a part of the Flutter layout system and is commonly used to create vertical layouts. The Column widget takes a list of child widgets and displays them one below the other.
2 - MainAxisAlignment: MainAxisAlignment is an enum in Flutter that defines how the children of a Column or Row widget are aligned along the main axis (vertical for Column and horizontal for Row). It provides several options such as start, end, center, spaceBetween, spaceAround, and spaceEvenly to control the alignment of child widgets.
3 - CrossAxisAlignment: CrossAxisAlignment is another enum in Flutter that defines how the children of a Column or Row widget are aligned along the cross axis (horizontal for Column and vertical for Row). It provides options such as start, end, center, stretch, and baseline to control the alignment of child widgets.
4 - Row Widget: The Row widget in Flutter is used to arrange its child widgets in a horizontal direction. Similar to the Column widget, it is part of the Flutter layout system and is commonly used to create horizontal layouts. The Row widget takes a list of child widgets and displays them side by side.
5 - Stack Widget: The Stack widget in Flutter is used to overlay multiple child widgets on top of each other. It allows you to position widgets relative to each other using the Positioned widget or by using alignment properties. The Stack widget is useful for creating complex layouts where widgets need to overlap or be layered.
6 - Positioned Widget: The Positioned widget in Flutter is used within a Stack widget to position its child widget at a specific location. It allows you to specify the distance from the top, bottom, left, and right edges of the Stack. This widget is useful for creating custom layouts where precise positioning of widgets is required.
7 - ListView Widget: The ListView widget in Flutter is used to create a scrollable list of widgets. It is commonly used to display a large number of items in a vertical or horizontal list. The ListView widget can be created using various constructors, such as ListView.builder, ListView.separated, and ListView.custom, to efficiently build and manage the list items.
8 - ListView.builder : The ListView.builder constructor in Flutter is used to create a scrollable list of widgets that are built on demand. It is particularly useful for displaying large lists of items, as it only builds the widgets that are currently visible on the screen, improving performance and reducing memory usage. The ListView.builder takes an itemCount parameter to specify the number of items in the list and an itemBuilder function to define how each item should be built.
9 - GridView Widget: The GridView widget in Flutter is used to create a scrollable grid of widgets. It allows you to display items in a two-dimensional grid layout, making it suitable for displaying images, cards, or other content in a structured manner. The GridView widget can be created using various constructors, such as GridView.count, GridView.extent, and GridView.builder, to customize the grid's appearance and behavior.
10 - GridView.builder : The GridView.builder constructor in Flutter is used to create a scrollable grid of widgets that are built on demand. Similar to ListView.builder, it is particularly useful for displaying large grids of items, as it only builds the widgets that are currently visible on the screen, improving performance and reducing memory usage. The GridView.builder takes a gridDelegate parameter to define the layout of the grid and an itemBuilder function to define how each item should be built.
11 - Button Widgets: Button widgets in Flutter are interactive UI elements that allow users to perform actions when tapped or clicked. Flutter provides several built-in button widgets, such as ElevatedButton, TextButton, OutlinedButton, IconButton, and FloatingActionButton. Each button widget has its own style and behavior, and they can be customized using various properties like onPressed, style, child, and more.
12 - GestureDetector Widget: The GestureDetector widget in Flutter is used to detect and respond to user gestures, such as taps, swipes, and long presses. It is a non-visual widget that can be wrapped around other widgets to add interactivity. The GestureDetector provides various callback functions, such as onTap, onDoubleTap, onLongPress, onPanUpdate, and more, allowing developers to define custom behavior for different gestures.
* */




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}

