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
      body: Container(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Color(0xFF7FD3FA),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset("asset/img/Logo2.png"),
                    width: 40,
                    height: 40,
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    width: 200,
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        fillColor: Color(0xFFBFBFBF),
                        hintText: "Email",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 16, 16, 15)),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF747474)),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
