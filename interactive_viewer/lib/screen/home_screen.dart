import 'package:flutter/material.dart';
import '../widgets/instruction_card.dart';
import 'viewer_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Interactive Viewer Demo"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [

            Image.asset(
              "assets/images/nature.jpg",
              height: 220,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 20),

            const InstructionCard(
              icon: Icons.zoom_in,
              title: "Pinch to Zoom",
            ),

            const InstructionCard(
              icon: Icons.pan_tool,
              title: "Drag to Pan",
            ),

            const InstructionCard(
              icon: Icons.touch_app,
              title: "Double Tap to Zoom",
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text(
                  "Open Interactive Viewer",
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ViewerScreen(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}