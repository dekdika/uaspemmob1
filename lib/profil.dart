import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uaspemob1/login.dart';
import 'package:uaspemob1/changepassword.dart';

class edit_profil extends StatefulWidget {
  const edit_profil({Key? key}) : super(key: key);

  @override
  State<edit_profil> createState() => _edit_profilState();
}

class _edit_profilState extends State<edit_profil> {
  @override
  bool editing = false;

  Widget build(BuildContext context) {
    return Scaffold(
      body: editing
          ? SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Image.asset("asset/img/edit.png"),
                  ),
                  Container(
                    // padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nama Lengkap",
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFBFBFBF),
                                  hintText: "Nama Lengkap",
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
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
                          // constraints:
                          //     const BoxConstraints.tightFor(width: 300, height: 52),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Email"),
                              TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFBFBFBF),
                                  hintText: "Email",
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
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
                          // constraints:
                          //     const BoxConstraints.tightFor(width: 300, height: 52),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(bottom: 10)),
                              Text("Alamat"),
                              TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFBFBFBF),
                                  hintText: "Alamat",
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
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(40, 0, 40, 20),
                          // constraints:
                          //     const BoxConstraints.tightFor(width: 300, height: 52),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(bottom: 10)),
                              Text("No.Telp"),
                              TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFBFBFBF),
                                  hintText: "No.Telepon",
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
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(40, 0, 40, 20),
                          constraints: const BoxConstraints.tightFor(
                              width: 300, height: 52),
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  editing = !editing;
                                });
                              },
                              child: Text(
                                "Simpan",
                                style: GoogleFonts.dmSans(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: StadiumBorder())),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Image.asset("asset/img/profil.png"),
                  ),
                  Container(
                    // padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nama Lengkap",
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFBFBFBF),
                                  hintText: "Nama Lengkap",
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
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
                          // constraints:
                          //     const BoxConstraints.tightFor(width: 300, height: 52),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Email"),
                              TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFBFBFBF),
                                  hintText: "Email",
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
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
                          // constraints:
                          //     const BoxConstraints.tightFor(width: 300, height: 52),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(bottom: 10)),
                              Text("Alamat"),
                              TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFBFBFBF),
                                  hintText: "Alamat",
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
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(40, 0, 40, 20),
                          // constraints:
                          //     const BoxConstraints.tightFor(width: 300, height: 52),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(bottom: 10)),
                              Text("No.Telp"),
                              TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFBFBFBF),
                                  hintText: "No.Telepon",
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
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(40, 0, 40, 20),
                          constraints: const BoxConstraints.tightFor(
                              width: 300, height: 52),
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  editing = !editing;
                                });
                              },
                              child: Text(
                                "Edit Profil",
                                style: GoogleFonts.dmSans(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: StadiumBorder())),
                        ),
                        SizedBox(height: 200),
                      ],
                    ),
                  ),
                ],
              ),
            ),
      backgroundColor: Color(0xFFFFFFFF),
    );
  }
}
