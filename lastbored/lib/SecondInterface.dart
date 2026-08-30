import 'package:flutter/material.dart';
class pi extends StatefulWidget {
  const pi({super.key});

  @override
  State<pi> createState() => _piState();
}

class _piState extends State<pi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('image/1.png')),
    );
  }
}
