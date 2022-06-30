import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uaspemob1/Login.dart';

class tambah_berita extends StatefulWidget {
  const tambah_berita({Key? key}) : super(key: key);

  @override
  State<tambah_berita> createState() => _tambah_beritaState();
}

class _tambah_beritaState extends State<tambah_berita> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
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
                  hintText: "Name",
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
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  padding: EdgeInsets.all(20),
                  child: Card(
                    elevation: 12,
                    child: Container(
                      child: Column(children: [
                        Container(
                          child: Row(children: [
                            Container(
                              alignment: Alignment.topLeft,
                              width: MediaQuery.of(context).size.height * 0.25,
                              height: MediaQuery.of(context).size.height * 0.15,
                              child: Icon(
                                Icons.add,
                                size: 160,
                              ),
                              // child: Image.asset("asset/img/berita1.jpg"),
                            ),
                            Container(
                              // color: Colors.black,
                              padding: EdgeInsets.only(top: 30),
                              width: MediaQuery.of(context).size.height * 0.18,
                              height: MediaQuery.of(context).size.height * 0.18,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Ini Berita yaaa",
                                  style: GoogleFonts.kanit(
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                            // Container()
                          ]),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: ElevatedButton(
                                child: const Text('Edit'),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    side: BorderSide(
                                      width: 2.0,
                                      color: Colors.white,
                                    ),
                                    primary: Color(0xFF7ED2F9),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 67, vertical: 20),
                                    textStyle: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: ElevatedButton(
                                child: const Text('Delete'),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    side: BorderSide(
                                      width: 2.0,
                                      color: Colors.white,
                                    ),
                                    primary: Color(0xFF7ED2F9),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 45, vertical: 20),
                                    textStyle: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        )
                      ]),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF7ED2F9),
                      ),
                      width: MediaQuery.of(context).size.height * 0.7,
                      height: MediaQuery.of(context).size.height * 0.3,
                      // color: Color(0xFF7ED2F9),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.all(20),
                  child: Card(
                    elevation: 12,
                    child: Container(
                      child: Column(children: [
                        Container(
                          child: Row(children: [
                            Container(
                              alignment: Alignment.topLeft,
                              width: MediaQuery.of(context).size.height * 0.25,
                              height: MediaQuery.of(context).size.height * 0.15,
                              child: Icon(
                                Icons.add,
                                size: 160,
                              ),
                              // child: Image.asset("asset/img/berita1.jpg"),
                            ),
                            Container(
                              // color: Colors.black,
                              padding: EdgeInsets.only(top: 30),
                              width: MediaQuery.of(context).size.height * 0.18,
                              height: MediaQuery.of(context).size.height * 0.18,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Ini Berita yaaa",
                                  style: GoogleFonts.kanit(
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                            // Container()
                          ]),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: ElevatedButton(
                                child: const Text('Edit'),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    side: BorderSide(
                                      width: 2.0,
                                      color: Colors.white,
                                    ),
                                    primary: Color(0xFF7ED2F9),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 67, vertical: 20),
                                    textStyle: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: ElevatedButton(
                                child: const Text('Delete'),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    side: BorderSide(
                                      width: 2.0,
                                      color: Colors.white,
                                    ),
                                    primary: Color(0xFF7ED2F9),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 45, vertical: 20),
                                    textStyle: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        )
                      ]),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF7ED2F9),
                      ),
                      width: MediaQuery.of(context).size.height * 0.7,
                      height: MediaQuery.of(context).size.height * 0.3,
                      // color: Color(0xFF7ED2F9),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.all(20),
                  child: Card(
                    elevation: 12,
                    child: Container(
                      child: Column(children: [
                        Container(
                          child: Row(children: [
                            Container(
                              alignment: Alignment.topLeft,
                              width: MediaQuery.of(context).size.height * 0.25,
                              height: MediaQuery.of(context).size.height * 0.15,
                              child: Icon(
                                Icons.add,
                                size: 160,
                              ),
                              // child: Image.asset("asset/img/berita1.jpg"),
                            ),
                            Container(
                              // color: Colors.black,
                              padding: EdgeInsets.only(top: 30),
                              width: MediaQuery.of(context).size.height * 0.18,
                              height: MediaQuery.of(context).size.height * 0.18,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Ini Berita yaaa",
                                  style: GoogleFonts.kanit(
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                            // Container()
                          ]),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: ElevatedButton(
                                child: const Text('Edit'),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    side: BorderSide(
                                      width: 2.0,
                                      color: Colors.white,
                                    ),
                                    primary: Color(0xFF7ED2F9),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 67, vertical: 20),
                                    textStyle: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: ElevatedButton(
                                child: const Text('Delete'),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    side: BorderSide(
                                      width: 2.0,
                                      color: Colors.white,
                                    ),
                                    primary: Color(0xFF7ED2F9),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 45, vertical: 20),
                                    textStyle: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        )
                      ]),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF7ED2F9),
                      ),
                      width: MediaQuery.of(context).size.height * 0.7,
                      height: MediaQuery.of(context).size.height * 0.3,
                      // color: Color(0xFF7ED2F9),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
