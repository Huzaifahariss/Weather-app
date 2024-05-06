import 'package:flutter/material.dart';
import 'package:weatherapp/ui/get_started.dart';

void main() {
  runApp(const weather());
}

class weather extends StatelessWidget {
  const weather({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Weather App',
      home: GetStarted(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}
