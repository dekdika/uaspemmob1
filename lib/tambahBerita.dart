import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class tambahBerita extends StatefulWidget {
  const tambahBerita({Key? key}) : super(key: key);

  @override
  State<tambahBerita> createState() => _tambahBeritaState();
}

class _tambahBeritaState extends State<tambahBerita> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              Text("Judul Berita"),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFBFBFBF),
                  hintText: "Juduk",
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
                      borderSide: BorderSide(color: Color(0xFFBFBFBF)),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFFBE9)),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                  ),
                ),
              ),
              Text("Judul Berita"),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFBFBFBF),
                  hintText: "Juduk",
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
            ],
          ),
        ),
      ),
    );
  }
}
