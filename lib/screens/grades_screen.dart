import 'package:flutter/material.dart';

class GradesScreen extends StatefulWidget {
  const GradesScreen({super.key});

  @override
  State<GradesScreen> createState() => _GradesScreenState();
}

class _GradesScreenState extends State<GradesScreen> {
  double average = 3.5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Средний балл: ${average.toStringAsFixed(1)}", style: const TextStyle(fontSize: 22)),
          const SizedBox(height: 20),
          Slider(
            value: average,
            min: 2.0,
            max: 5.0,
            divisions: 30,
            label: average.toStringAsFixed(1),
            onChanged: (value) {
              setState(() {
                average = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
