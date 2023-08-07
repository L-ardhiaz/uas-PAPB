import 'package:flutter/material.dart';

enum BoxShapeType {
  circle,
  rectangle,
}

class Kelompok extends StatefulWidget {
  const Kelompok({super.key});

  @override
  State<Kelompok> createState() => _KelompokState();
}

class _KelompokState extends State<Kelompok> {
  BoxShapeType selectedShape = BoxShapeType.circle;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Kelompok'),
        ),
        body: const Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text("Nama : Yuliana Dwi lestari NIM: 20104410046"),
                Text("Job desk: Membuat tampilan flutter dan button"),
                Padding(padding: EdgeInsets.all(20)),
                Text("Nama : La Vanda Ardhiaz Poetra Abadi NIM:20104410086"),
                Text("Job desk: membuat tampilan layout custom"),
                Padding(padding: EdgeInsets.all(20)),
                Text("Nama : Isnan Ridho Alamsyah NIM:20104410051"),
                Text("Job desk: membuat tampilan Image assets"),
                Padding(padding: EdgeInsets.all(20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
