import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uaspemob1/Login.dart';
import 'package:uaspemob1/dashboard.dart';
import 'package:uaspemob1/detailNotif.dart';

class berita extends StatefulWidget {
  const berita({Key? key}) : super(key: key);

  @override
  State<berita> createState() => _beritaState();
}

class _beritaState extends State<berita> {
  TextEditingController judul = TextEditingController();
  TextEditingController penjelasan = TextEditingController();
  TextEditingController foto = TextEditingController();
  TextEditingController searchController = TextEditingController();

  bool hover = true;

  showAlertDialog(BuildContext context) {
    // Create button

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Update Berita"),
      content: Text("Berhasil Tambah Berita!"),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  bool selected = true;
  Widget build(BuildContext context) {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    CollectionReference pengiriman = firebaseFirestore.collection("berita");
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false, // Don't show the leading button
          title: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF7FD3FA),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset("asset/img/Logo2.png"),
                width: 50,
                height: 50,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Color(0xFFBFBFBF),
                    hintText: "Mau Cari Kabar Apa",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFFBE9)),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFFBE9)),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                  ),
                ),
              )
            ],
          ),
          // leading: Image.asset("asset/img/Logo2.png"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              // index == 2;
              selected = !selected;
            });
            // print(index.toString());
          },
          child: Icon(Icons.add),
        ),
        body: selected
            ? Container(
                width: MediaQuery.of(context).size.height,
                height: MediaQuery.of(context).size.height,
                child: datailNotif())
            : SingleChildScrollView(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Judul Berita"),
                            TextField(
                              controller: judul,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFBFBFBF),
                                hintText: "Judul",
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFFFFBE9)),
                                  borderRadius: BorderRadius.circular(25.7),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFFFFBE9)),
                                  borderRadius: BorderRadius.circular(25.7),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text("Penjelasan Berita"),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.7),
                                color: Color(0xFFBFBFBF),
                              ),
                              height: MediaQuery.of(context).size.height * 0.5,
                              width: MediaQuery.of(context).size.height * 0.5,
                              child: TextField(
                                controller: penjelasan,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFBFBFBF),
                                  hintText: "Ketik Disini",
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFBFBFBF)),
                                    borderRadius: BorderRadius.circular(25.7),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFFFFBE9)),
                                    borderRadius: BorderRadius.circular(25.7),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text("Foto Berita"),
                            TextField(
                              controller: foto,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFBFBFBF),
                                hintText: "Foto",
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFFFFBE9)),
                                  borderRadius: BorderRadius.circular(25.7),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFBFBFBF)),
                                  borderRadius: BorderRadius.circular(25.7),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.height,
                              alignment: Alignment.center,
                              child: Container(
                                alignment: Alignment.center,
                                child: InkWell(
                                  onTap: () {
                                    pengiriman.add({
                                      'judul': judul.text,
                                      'penjelasan': penjelasan.text,
                                      'foto': foto.text
                                    });
                                    showAlertDialog(context);
                                    setState(() {
                                      selected = !selected;
                                    });
                                  },
                                  child: Text("Submit"),
                                ),
                                decoration: BoxDecoration(
                                    color:
                                        hover ? Color(0xFF7ED2F9) : Colors.blue,
                                    borderRadius: BorderRadius.circular(50)),
                                height: 40,
                                width: MediaQuery.of(context).size.height,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ));
  }
}
