import 'package:flutter/material.dart';

class LatihanLoadGambar extends StatefulWidget {
  const LatihanLoadGambar({super.key});

  @override
  State<LatihanLoadGambar> createState() => _LatihanLoadGambarState();
}

class _LatihanLoadGambarState extends State<LatihanLoadGambar> {
  static const String _imageUrl1 =
      'https://cdn.pixabay.com/photo/2016/07/30/20/40/mario-1557975_960_720.jpg';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Latihan Local Image'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(20),
                ),
                const Text("Mengambil Gambar Dari Internet"),
                const Padding(
                  padding: EdgeInsets.all(5),
                ),
                Container(
                  width: 200,
                  height: 200,
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(_imageUrl1), fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                ),
                const Text("Mengambil Gambar Dari Assets"),
                const Padding(
                  padding: EdgeInsets.all(5),
                ),
                Container(
                  width: 200,
                  height: 200,
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/yuliana.jpg'),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
                Container(
                  width: 200,
                  height: 200,
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/dhiaz.jpg'),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
                Container(
                  width: 200,
                  height: 200,
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/isnan.jpg'),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
