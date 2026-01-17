import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProviderPractice(),
    );
  }
}
class ProviderPractice extends StatelessWidget {
  const ProviderPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Provider Practice"),



        ],
      ),

    );
  }
}
