import 'package:flutter/material.dart';
import 'package:interview_question/components/counter_components.dart';
import 'package:interview_question/components/divider_components.dart';
import 'package:interview_question/components/multiplier_components.dart';
import 'package:interview_question/components/subtraction_components.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Test',
      theme: ThemeData(    
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            centerTitle: true,
            title: Text(widget.title),
      ),
      body: 
      Column(
         children: 
        [
          const SizedBox(height: 20,),
          MultiplierComponent(),
          const SizedBox(height: 10,),
          SubtractionComponent(),
          const SizedBox(height: 10,),
          DividerComponent(),
          const SizedBox(height: 10,),
          const CounterComponent(),
         ]
        )
    );
  }
}
