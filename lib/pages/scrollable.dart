import 'package:berita/pages/berita.dart';
import 'package:berita/pages/widget.dart';
import 'package:flutter/material.dart';

class ScrollableHome extends StatelessWidget {
  const ScrollableHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          bikinInfoAntrian(),
          bikinIconMenu(),
          bikinIklan(),

          //FIXME: Belum bisa masukin kedua item ini,
          //baru bisa pilih salah satu(berita atau info2 diatas),
          //waktu tidak cukup sekarang 18:05

          //TODO: Uncomment class dibawah, tapi comment 3 widget diatas untuk melihat berita
          // const Berita(),
        ],
      ),
    );
  }

  bikinIconMenu() {
    return Image.asset('assets/images/iconmenu.png');
  }

  bikinIklan() {
    return Image.asset('assets/images/ads.png');
  }
}
