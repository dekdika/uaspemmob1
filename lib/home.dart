import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uaspemob1/Login.dart';
import 'package:uaspemob1/changepassword.dart';
import 'package:uaspemob1/forgetPassword.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  int _currentIndex = 0;
  List _pages = [LoginPage(), Changepassword(), ForgetPassword()];
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
