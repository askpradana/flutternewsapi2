import 'package:flutter/material.dart';

bikinAppBar() {
  return Padding(
    padding: const EdgeInsets.only(top: 19),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            width: 134.65,
            height: 22.42,
            child: Image.asset('assets/images/mediplus_logo.png')),
        Row(
          children: [
            const Text("Hi, Bagus"),
            const Icon(
              Icons.account_circle_outlined,
            ),
          ],
        ),
      ],
    ),
  );
}

bikinSearchBar(controller) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: Container(
      alignment: Alignment.center,
      width: 341,
      height: 39,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.purple, style: BorderStyle.solid),
        color: const Color(0xffE3E3E3),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: TextFormField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: 'Cari klinik / Rumah Sakit',
            border: InputBorder.none,
          ),
        ),
      ),
    ),
  );
}

bikinInfoAntrian() {
  return SizedBox(
    height: 143,
    width: 343,
    child: Image.asset('assets/images/data_antrian.png'),
    // child: Image.asset('assets/images/mediplus_logo.png')),
  );
}

bikinIconMenu() {
  return Image.asset('assets/images/iconmenu.png');
}

bikinIklan() {
  return Image.asset('assets/images/ads.png');
}
