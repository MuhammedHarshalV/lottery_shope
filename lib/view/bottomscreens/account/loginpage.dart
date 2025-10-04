import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_shope/constance/colorcontsance.dart';
import 'package:lottery_shope/view/advertisement/advertisement.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorcontsance.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Login Page',
            style: GoogleFonts.orbitron(
              color: Colorcontsance.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colorcontsance.red,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 10,
            children: [
              Adverticement(),
              Divider(color: Colorcontsance.red, thickness: 5),
              textfielddetails(hinttext: 'Username'),
              textfielddetails(hinttext: 'Password'),
              textfielddetails(hinttext: 'Registerd Phone Number'),
              textfielddetails(hinttext: 'OTP'),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colorcontsance.blue,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colorcontsance.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container textfielddetails({required String hinttext}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colorcontsance.red),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(color: Colorcontsance.red),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
