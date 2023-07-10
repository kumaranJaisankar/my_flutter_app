import 'package:flutter/material.dart';
import 'Screens/Home.dart';
// import 'package:flutter/cupertino.dart';

void main() => runApp(const CorePage());

class CorePage extends StatelessWidget {
  const CorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'simple app',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
