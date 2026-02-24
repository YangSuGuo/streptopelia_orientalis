import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_shapes/material_shapes.dart';

class Summary extends ConsumerStatefulWidget {
  const Summary({super.key});

  @override
  ConsumerState createState() => _SummaryState();
}

class _SummaryState extends ConsumerState<Summary> {
  List<Widget> materialShapesView = [
    MaterialShapes.arch(size: 100, color: Colors.blue),
    MaterialShapes.circle(size: 100, color: Colors.blue),
    MaterialShapes.clampShell(size: 100, color: Colors.blue),
    MaterialShapes.fan(size: 100, color: Colors.blue),
    MaterialShapes.gem(size: 100, color: Colors.blue),
    MaterialShapes.ghostish(size: 100, color: Colors.blue),
    MaterialShapes.pentagon(size: 100, color: Colors.blue),
    MaterialShapes.sevenSidedCookie(size: 100, color: Colors.blue),
    MaterialShapes.sixSidedCookie(size: 100, color: Colors.blue),
    MaterialShapes.square(size: 100, color: Colors.blue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (a, b) {
          return SizedBox.square(dimension: 100, child: materialShapesView[b]);
        },
        itemCount: materialShapesView.length,
      ),
    );
  }
}
