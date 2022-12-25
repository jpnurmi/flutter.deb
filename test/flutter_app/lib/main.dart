import 'dart:async';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized().scheduleFrameCallback((_) {
    print('Hello, Flutter!');
    windowManager.ensureInitialized().then((_) {
      Timer(const Duration(milliseconds: 500), () => windowManager.close());
    });
  });

  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('flutter.deb')),
      body: const Center(child: Text('Hello, Flutter!')),
    ),
  ));
}
