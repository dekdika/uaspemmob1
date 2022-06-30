import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uaspemob1/Login.dart';
import 'package:uaspemob1/berita.dart';

import 'package:uaspemob1/changepassword.dart';
import 'package:uaspemob1/dashboard.dart';
import 'package:uaspemob1/forgetPassword.dart';
import 'package:uaspemob1/profil.dart';
import 'package:uaspemob1/main.dart';
import 'package:uaspemob1/dashboard.dart';

class bottom_navigation extends StatefulWidget {
  const bottom_navigation({Key? key}) : super(key: key);

  @override
  State<bottom_navigation> createState() => _bottom_navigationState();
}

class _bottom_navigationState extends State<bottom_navigation> {
  int _currentIndex = 0;
  List _pages = [dashboard(), berita(), edit_profil()];
  void tekan(int Index) {
    setState(() {
      _currentIndex = Index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: tekan,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book), label: 'Berita Saya'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Akun'),
          ],
        ),
      ),
    );
  }
}
