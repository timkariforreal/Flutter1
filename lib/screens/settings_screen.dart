import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool darkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Тема: ${darkTheme ? "Тёмная" : "Светлая"}", style: const TextStyle(fontSize: 22)),
          const SizedBox(height: 20),
          Switch(
            value: darkTheme,
            onChanged: (value) {
              setState(() {
                darkTheme = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
