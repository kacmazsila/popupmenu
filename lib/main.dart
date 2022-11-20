import 'package:flutter/material.dart';

void main() {
  runApp(const BottomAppBarDemo());
}

class BottomAppBarDemo extends StatefulWidget {
  const BottomAppBarDemo({super.key});

  @override
  State<BottomAppBarDemo> createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  FloatingActionButtonLocation _fabLocation =
      FloatingActionButtonLocation.endDocked;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Bottom App Bar Demo"),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            tooltip: 'Create',
            child: const Icon(Icons.menu),
          ),
          floatingActionButtonLocation: _fabLocation,
          bottomNavigationBar: _CustomBottomBar(
              fabLocation: _fabLocation, shape: CircularNotchedRectangle())),
    );
  }
}

class _CustomBottomBar extends StatelessWidget {
  const _CustomBottomBar(
      {super.key, required this.fabLocation, required this.shape});

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape shape;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: shape,
      color: Colors.blue,
      child: Row(
        children: [
          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.person), onPressed: () {}),
        ],
      ),
    );
  }
}
