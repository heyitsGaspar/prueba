
import 'package:flutter/material.dart';
import 'package:normal/widgets/button_section.dart';
import 'package:normal/widgets/image_section.dart';
import 'package:normal/widgets/text_section.dart';
import 'package:normal/widgets/title_section.dart';

void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fultter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body:Center (
          child: ListView(
            children: const [
              ImageSection(),
              TittleSection(),
              ButtonSection(),
              TextSection(),
            ],
          )
        ),
      ),
    );
  }
  
  
}
