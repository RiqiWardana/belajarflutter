import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

          backgroundColor: Color.fromARGB(255, 220, 4, 4),
          title: Center(
            child: Text(
              "JKT48 TEAM B",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
          actions: [
            IconButton(icon: const Icon(Icons.menu_rounded), onPressed: () {})
          ],
          leading: IconButton(
            icon: const Icon(Icons.home_rounded),
            onPressed: () {},
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(152, 220, 4, 4),
                Color.fromARGB(255, 255, 255, 255),
              ],
            ),
          ),
          child: ListView(
            children: <Widget>[
              ColoredBox(color: Colors.black),
              ListMember(
                gambar:
                    "https://jkt48.com/profile/shania_gracia.jpg?v=20230116",
                nama: "Shania Gracia",
                deskripsi: "31 Agustus 1999",
              ),
              CustomDivider(height: 2.0),
              ListMember(
                gambar:
                    "data:image/jpeg;base64,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",
                nama: "Fransisca Saraswati",
                deskripsi: "24 Februari 2000",
              ),
              CustomDivider(height: 2.0),
              ListMember(
                gambar:
                    "https://jkt48.com/profile/gabriela_abigail.jpg?v=20230531",
                nama: "Gabriela Abigail",
                deskripsi: "7 Agustus 2006",
              ),
              CustomDivider(height: 2.0),
              ListMember(
                gambar:
                    "https://jkt48.com/profile/callista_alifia.jpg?v=20230531",
                nama: "Callista Alifia",
                deskripsi: "8 Agustus 2005",
              ),
              CustomDivider(height: 2.0),
              ListMember(
                gambar: "https://jkt48.com/profile/amanda_sukma.jpg?v=20230530",
                nama: "Amanda Sukma",
                deskripsi: "17 Desember 2004",
              ),
              CustomDivider(height: 2.0),
              ListMember(
                gambar:
                    "https://jkt48.com/profile/angelina_christy.jpg?v=20230116",
                nama: "Angelina Christy",
                deskripsi: "5 Desember 2005",
              ),
              CustomDivider(height: 2.0),
              ListMember(
                gambar:
                    "https://jkt48.com/profile/yessica_tamara.jpg?v=20230116",
                nama: "Yessica Tamara",
                deskripsi: "24 September 2002",
              ),
              CustomDivider(height: 2.0),
              ListMember(
                  gambar:
                      "https://jkt48.com/profile/lulu_salsabila.jpg?v=20230116",
                  nama: "Lulu Salsabila",
                  deskripsi: "23 Oktober 2002"
                  ),
                  CustomDivider(height: 2.0),
              ListMember(
                gambar:
                    "https://jkt48.com/profile/cornelia_vanisa.jpg?v=20230116",
                nama: "Cornelia Vanisa",
                deskripsi: "26 Juli 2002",
              ),
              CustomDivider(height: 2.0),
              ListMember(
                gambar:
                    "https://jkt48.com/profile/fiony_alveria.jpg?v=20230116",
                nama: "Fiony Alveria",
                deskripsi: "4 Februari 2002",
              ),
              CustomDivider(height: 2.0),
              ListMember(
                gambar:
                    "https://jkt48.com/profile/gita_sekar_andarini.jpg?v=20230116",
                nama: "Gita Sekar Andarini",
                deskripsi: "30 Juni 2001",
              ),
              CustomDivider(height: 2.0),
              ListMember(
                gambar:
                    "https://jkt48.com/profile/freya_jayawardana.jpg?v=20230116",
                nama: "Freya JayaWardana",
                deskripsi: "13 Februari 2006",
              ),
              CustomDivider(height: 2.0),
              ListMember(
                gambar:
                    "https://jkt48.com/profile/jessica_chandra.jpg?v=20230116",
                nama: "Jessica Chandra",
                deskripsi: "23 September 2005",
              ),
              CustomDivider(height: 2.0),
              ListMember(
                gambar: "https://jkt48.com/profile/indah_cahya.jpg?v=20230116",
                nama: "Indah Cahya", deskripsi: "20 Maret 2001",
              ),
              CustomDivider(height: 2.0),
              ListMember(
                gambar:
                    "https://jkt48.com/profile/marsha_lenathea.jpg?v=20230116",
                    nama: "Marsha Lenathea", deskripsi: "9 Januari 2006",
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color.fromARGB(255, 220, 4, 4),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class ListMember extends StatelessWidget {
  ListMember({this.gambar, this.nama, this.deskripsi,});
  final String? gambar;
  final String? nama;
  final String? deskripsi;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          ClipOval(
            child: Image(
              image: NetworkImage(
                gambar!,
              ),
              width: 80.0,
              height: 80.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 50.0,
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  nama!,
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  deskripsi!,
                  style: TextStyle(fontSize: 13.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  final double height;

  const CustomDivider({required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: Color.fromARGB(30, 0, 0, 0),
    );
  }
}
