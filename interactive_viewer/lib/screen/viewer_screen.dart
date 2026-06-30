import 'package:flutter/material.dart';

class ViewerScreen extends StatefulWidget {
  const ViewerScreen({super.key});

  @override
  State<ViewerScreen> createState() => _ViewerScreenState();
}

class _ViewerScreenState extends State<ViewerScreen> {
  final TransformationController controller = TransformationController();

  bool zoomed = false;

  void _doubleTap() {
    setState(() {
      if (zoomed) {
        controller.value = Matrix4.identity();
      } else {
        controller.value = Matrix4.identity()..scale(2.5);
      }

      zoomed = !zoomed;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void resetView() {
    controller.value = Matrix4.identity();
    zoomed = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Interactive Viewer"),
        actions: [
          IconButton(
            onPressed: resetView,
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: Center(
        child: GestureDetector(
          onDoubleTap: _doubleTap,
          child: InteractiveViewer(
            transformationController: controller,
            minScale: 1,
            maxScale: 5,
            boundaryMargin: const EdgeInsets.all(50),
            child: Image.asset(
              "assets/images/nature.jpg",
            ),
          ),
        ),
      ),
    );
  }
}