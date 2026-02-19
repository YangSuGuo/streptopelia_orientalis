import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

class AccentColorExample extends StatelessWidget {
  const AccentColorExample({super.key});

  static const title = 'Accent color (desktop)';

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Color?>(
      future: DynamicColorPlugin.getAccentColor(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final color = snapshot.data;
          return color == null
              ? const Text(
            "Accent color isn't supported on this platform",
          )
              : Column(
            children: [
              ColoredSquare(color, 'Accent color'),
            ],
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}

const contentMaxWidth = BoxConstraints(maxWidth: 400);
const contentPadding = EdgeInsets.symmetric(horizontal: 10);

class ColoredSquare extends StatelessWidget {
  const ColoredSquare(this.color, this.description, {super.key});

  final Color? color;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            color: color,
          ),
          const SizedBox(width: 10),
          Flexible(child: Text(description)),
        ],
      ),
    );
  }
}