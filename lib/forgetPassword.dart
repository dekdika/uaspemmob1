import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uaspemob1/login.dart';
import 'package:uaspemob1/changepassword.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset("asset/img/logo.png"),
            ),
            Container(
              // padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Forget Password",
                    style: GoogleFonts.dmSans(
                      color: Color(0xFF29B6F6),
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 47,
                  ),
                  Container(
                    constraints:
                        const BoxConstraints.tightFor(width: 300, height: 52),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFBFBFBF),
                        hintText: "Email",
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
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Container(
                    constraints:
                        const BoxConstraints.tightFor(width: 300, height: 52),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Changepassword(),
                            ),
                          );
                        },
                        child: Text(
                          "Send Email",
                          style: GoogleFonts.dmSans(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        style:
                            ElevatedButton.styleFrom(shape: StadiumBorder())),
                  ),
                  SizedBox(height: 200),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFFB1B1B1)),
                      ),
                      GestureDetector(
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.blue),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
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
