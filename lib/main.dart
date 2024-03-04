import 'package:flutter/material.dart';

enum InputIcon {
  mail,
  key,
}

IconData _getIconData(InputIcon icon) {
  switch (icon) {
    case InputIcon.mail:
      return Icons.mail;
    case InputIcon.key:
      return Icons.key;
  }
}

class DemoWidget {
  final String labelText;
  final InputIcon icon;

  DemoWidget({required this.labelText, required this.icon});


  Widget build() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          suffixIcon: Icon(_getIconData(icon)),
        ),
      ),
    );
  }
}

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Builder Pattern Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DemoWidget(
                labelText: 'E-mail',
                icon: InputIcon.mail,
              ).build(),
              //const SizedBox(height: 20),
              DemoWidget(
                labelText: 'Password',
                icon: InputIcon.key,
              ).build(),
            ],
          ),
        ),
      ),
    );
  }
}


