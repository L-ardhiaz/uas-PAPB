import 'package:flutter/gestures.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'Tugas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tugas Kelompok Flutter'),
      // home: HalloScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class ListItem {
  final IconData iconData;
  final String title;
  final double width;
  final Color color;

  ListItem(
      {required this.iconData,
      required this.title,
      required this.width,
      required this.color});
}

class _MyHomePageState extends State<MyHomePage> {
  static const String _imgHeader = "https://i.ibb.co/s1RpfXD/pecel.jpg";
  static const String _imgItems = "https://i.ibb.co/Smfw2R0/pecel2.jpg";
  @override
  Widget build(BuildContext context) {
    final List<ListItem> itemList = [
      ListItem(
          iconData: Icons.wallet_giftcard,
          title: 'Menu Spesial',
          width: 300,
          color: Colors.green),
      ListItem(
          iconData: Icons.social_distance,
          title: 'Menu Terlaris',
          width: 200,
          color: Colors.red),
      ListItem(
          iconData: Icons.coffee,
          title: 'Minuman',
          width: 300,
          color: Colors.blue),
    ];
    Widget buildHeaderItem() => Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(3),
              width: 310,
              height: 165,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(_imgHeader), fit: BoxFit.cover),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(3),
              width: 310,
              height: 165,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color.fromARGB(255, 2, 2, 2),
                    Color.fromARGB(86, 0, 0, 0),
                  ],
                  stops: [0.1, 1.0],
                ),
              ),
            ),
            const Positioned(
              left: 15,
              bottom: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Promo 20%",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 249, 237, 64),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Untuk 10 Pembeli Pertama",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 230, 230, 230),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
    Widget buildMenuItem(index) => Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              width: itemList[index].width,
              color: itemList[index].color,
            ),
            Positioned(
              top: 20,
              child: Icon(
                itemList[index].iconData,
                size: 30,
                color: Colors.white,
              ),
            ),
            Container(
              width: itemList[index].width,
              color: itemList[index].color.withAlpha(120),
            ),
            Positioned(
              top: 50,
              child: Text(
                itemList[index].title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        );

    Widget buildBodyItem(index) => Container(
          padding: EdgeInsets.all(5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                width: 100,
                height: 110,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(_imgItems),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.all(5),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 243, 191, 71),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Row(
                          children: [
                            Icon(Icons.star,
                                color: Color.fromARGB(255, 0, 0, 0), size: 15),
                            Text("4.5",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                          ],
                        )),
                    const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 5)),
                    const Text(
                      "Pecel Sambel Tumpang",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const Text("Pecel,Sambel Tumpang, Telur",
                        style: TextStyle(fontSize: 15)),
                    const Text('Bali, Sate Usus, ... ',
                        style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
            ],
          ),
        );

    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 243, 237, 251),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(0),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Icon(Icons.home), Text('Home')],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(0),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Icon(Icons.trolley), Text('Keranjang')],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {
          print('FloatingActionButton pressed!');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        padding: const EdgeInsets.all(0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: Column(
                  children: <Widget>[
                    buildHeaderItem(),
                    buildHeaderItem(),
                    buildHeaderItem(),
                    buildHeaderItem(),
                    buildHeaderItem(),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 165,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return buildHeaderItem();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: itemList.length,
                        itemBuilder: (context, index) {
                          return buildMenuItem(index);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Menu Pilihan",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (var i = 0; i < 5; i++) buildBodyItem(0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  final VoidCallback? onPressed;
  CustomFloatingActionButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(0),
      child: FittedBox(
        child: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 255, 235, 60),
          onPressed: onPressed,
          shape: const FlutterPolygonBorder(
            sides: 6,
            rotate: 0,
          ),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.book, size: 15),
                Text(
                  "Menu",
                  style: TextStyle(
                    fontSize: 8,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
