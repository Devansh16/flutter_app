import 'package:flutter/material.dart'; // Includes a lot of stuff (buttons, etc)

void main() {
  runApp(MyApp()); // To execute the app
}

class MyApp extends StatelessWidget {
  // Class "MyApp" inherits the StateLessWidget Class for its functionality.
  Widget build(BuildContext context) {
    // Class "build" return type "Widget"
    return MaterialApp(
      home: Text('Hello, World!'),
    );
  }
}
