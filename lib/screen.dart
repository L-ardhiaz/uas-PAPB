import 'package:flutter/material.dart';

class HalloScreen extends StatefulWidget {
  const HalloScreen({super.key});

  @override
  State<HalloScreen> createState() => _HalloScreenState();
}

class _HalloScreenState extends State<HalloScreen> {
  @override
  Widget build(BuildContext context) {
    var box = Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blue, Colors.red]),
      ),
      // color: Colors.red,
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      child: const Text('Kelas Regular Malam PAPB'),
    );
    var baris = Row(
      children: <Widget>[
        box, box, box, box,
        // const Expanded(
        //     child: Text(
        //         'Makan Bakso Beranak Pinak dan Minum Es Teh dua Gelas dibayarin oleh pak tono diwarung bu tumini yang ada dipojok Kota Blitar')),
        // const Icon(Icons.sentiment_very_satisfied_rounded),
      ],
    );
    var kolom = Column(
      children: <Widget>[box, box, box, box],
    );
    var tombol = ElevatedButton(
        onPressed: () {
          print('Aku ditekan sama kamu');
        },
        child: const Text('Tekan Aku'));
    var tumpukan = Stack(
      children: <Widget>[kolom, baris, tombol],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Latihan Tampilan Layout Custom'),
        ),
        body: tumpukan,
      ),
    );
  }
}
