import 'package:flutter/material.dart';
import 'package:linguabound/views/pages/pages.dart';
import 'package:linguabound_widget/linguabound_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await LinguaboundWidget.initialize();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => LinguaboundMaterialApp(
        home: const OnBoardingPage1(),
      );
}
