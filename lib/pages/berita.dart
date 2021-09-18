import 'package:berita/api/api.dart';
import 'package:berita/model/NewsModel.dart';
import 'package:flutter/material.dart';

class Berita extends StatefulWidget {
  const Berita({Key? key}) : super(key: key);

  @override
  _BeritaState createState() => _BeritaState();
}

class _BeritaState extends State<Berita> {
  final nomoracak = List<int>.generate(20, (index) => index);
  late Future<NewsModel> futureNews;

  @override
  void initState() {
    super.initState();
    nomoracak.shuffle();
    futureNews = fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsModel>(
      future: futureNews,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return DisplayBerita(
                  gambar: snapshot.data!.articles![nomoracak[index]].urlToImage
                      .toString(),
                  judul: snapshot.data!.articles![nomoracak[index]].title!,
                  sumber:
                      snapshot.data!.articles![nomoracak[index]].source!.name!,
                  tanggalTerbit:
                      snapshot.data!.articles![nomoracak[index]].publishedAt!,
                  konten: snapshot.data!.articles![nomoracak[index]].content!,
                );
              },
            ),
          );
        } else if (snapshot.hasError) {
          return const Text("Error");
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}

class DisplayBerita extends StatelessWidget {
  const DisplayBerita({
    Key? key,
    required this.gambar,
    required this.judul,
    required this.sumber,
    required this.tanggalTerbit,
    required this.konten,
  }) : super(key: key);
  final String gambar;
  final String judul;
  final String sumber;
  final String tanggalTerbit;
  final String konten;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        height: 400,
        child: Column(
          children: [
            Expanded(
              child: Image.network(gambar),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      judul,
                      style: const TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sumber : $sumber',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            tanggalTerbit,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      konten,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Text("Baca selengkapnya..."),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
