import 'package:berita/pages/berita.dart';
import 'package:berita/pages/scrollable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:berita/pages/widget.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(fontFamily: 'Rubik'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33),
          child: Column(
            children: [
              bikinAppBar(),
              bikinSearchBar(controller),
              // bikinInfoAntrian(),
              // const Berita(),
              const ScrollableHome(),
            ],
          ),
        ),
      ),
    );
  }
}
