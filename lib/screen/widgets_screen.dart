import 'package:flutter/material.dart';

class WidgetScreen extends StatelessWidget {
  const WidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
        centerTitle: true,
      ),
      body: AspectRatio(
        aspectRatio: 3 / 2,
        child: Container(
          color: Colors.black,
          child: const Center(
            child: FlutterLogo(
              size: 100,
            ),
          ),
        ),
      ),
    );
  }
}
