import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uaspemob1/Login.dart';
import 'package:uaspemob1/tambahBerita.dart';
import 'package:uaspemob1/tambah_berita.dart';

void main() async {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  TextEditingController searchController = TextEditingController();
  var index = 2;
  @override
  bool selected = false;
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // index == 2;
            selected = !selected;
          });
          print(index.toString());
        },
        child: Icon(Icons.add),
      ),
      body: selected
          ? Stack(
              children: [
                SingleChildScrollView(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 40),
                              decoration: BoxDecoration(
                                color: Color(0xFF7FD3FA),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Image.asset("asset/img/Logo2.png"),
                              width: 50,
                              height: 50,
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(left: 20, top: 50, right: 10),
                              width: 300,
                              child: TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.search),
                                  filled: true,
                                  fillColor: Color(0xFFBFBFBF),
                                  hintText: "Name",
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
                            )
                          ],
                        ),
                        SingleChildScrollView(
                          padding: EdgeInsets.all(20),
                          child: InkWell(
                            onTap: (() {}),
                            child: Card(
                              elevation: 12,
                              child: Container(
                                child: Column(children: [
                                  Container(
                                    child: Row(children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        width:
                                            MediaQuery.of(context).size.height *
                                                0.25,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        child: Icon(
                                          Icons.add,
                                          size: 160,
                                        ),
                                        // child: Image.asset("asset/img/berita1.jpg"),
                                      ),
                                      Container(
                                        // color: Colors.black,
                                        padding: EdgeInsets.only(top: 30),
                                        width:
                                            MediaQuery.of(context).size.height *
                                                0.18,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.18,
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
                                ]),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFF7ED2F9),
                                ),
                                width: MediaQuery.of(context).size.height * 0.7,
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                // color: Color(0xFF7ED2F9),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20, top: 40),
                          decoration: BoxDecoration(
                            color: Color(0xFF7FD3FA),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Image.asset("asset/img/Logo2.png"),
                          width: 50,
                          height: 50,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, top: 50, right: 10),
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.search),
                              filled: true,
                              fillColor: Color(0xFFBFBFBF),
                              hintText: "Name",
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
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Judul Berita"),
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFBFBFBF),
                              hintText: "Juduk",
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
                          Text("Judul Berita"),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.7),
                              color: Color(0xFFBFBFBF),
                            ),
                            height: MediaQuery.of(context).size.height * 0.5,
                            width: MediaQuery.of(context).size.height * 0.5,
                            child: TextField(
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
                          Text("Judul Berita"),
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFBFBFBF),
                              hintText: "Juduk",
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
                                  print("i am tapped");
                                },
                                child: Text("Submit"),
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xFF7ED2F9),
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
            ),
    );
  }
}
