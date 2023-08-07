import 'package:flutter/material.dart';

enum BoxShapeType {
  circle,
  rectangle,
}

class LatihanEditGambar extends StatefulWidget {
  const LatihanEditGambar({super.key});

  @override
  State<LatihanEditGambar> createState() => _LatihanEditGambarState();
}

class _LatihanEditGambarState extends State<LatihanEditGambar> {
  BoxShapeType selectedShape = BoxShapeType.circle;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Latihan Edit Image'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20),
                DropdownButton(
                  value: selectedShape,
                  onChanged: (BoxShapeType? newValue) {
                    setState(() {
                      selectedShape = newValue!;
                    });
                  },
                  items: BoxShapeType.values.map((shape) {
                    return DropdownMenuItem(
                      value: shape,
                      child: Text(shape.toString().split('.').last),
                    );
                  }).toList(),
                ),
                Container(
                  width: 200,
                  height: 200,
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('images/yuliana.jpg'),
                        fit: BoxFit.cover),
                    shape: selectedShape == BoxShapeType.circle
                        ? BoxShape.circle
                        : BoxShape.rectangle,
                  ),
                ),
                Container(
                  width: 200,
                  height: 200,
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('images/dhiaz.jpg'),
                        fit: BoxFit.cover),
                    shape: selectedShape == BoxShapeType.circle
                        ? BoxShape.circle
                        : BoxShape.rectangle,
                  ),
                ),
                Container(
                  width: 200,
                  height: 200,
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('images/isnan.jpg'),
                        fit: BoxFit.cover),
                    shape: selectedShape == BoxShapeType.circle
                        ? BoxShape.circle
                        : BoxShape.rectangle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
