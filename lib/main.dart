import 'package:flutter/material.dart';
import 'welcome_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaterialApp(
    home: Welcome_page(),
  ));
}