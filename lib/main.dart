import 'package:crud_app/Screen/ProductCreateScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter Crud App",
      home: ProductCreateScreen(),
    );
  }
}
