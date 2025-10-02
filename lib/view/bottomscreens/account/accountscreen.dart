import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_shope/constance/colorcontsance.dart';
import 'package:lottery_shope/view/advertisement/advertisement.dart';
import 'package:lottery_shope/view/bottomscreens/account/loginpage.dart';
import 'package:lottery_shope/view/bottomscreens/account/registerpage.dart';

class Accountscreen extends StatefulWidget {
  const Accountscreen({super.key});

  @override
  State<Accountscreen> createState() => _AccountscreenState();
}

class _AccountscreenState extends State<Accountscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Account Screen',
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Adverticement(),
              Divider(color: Colorcontsance.red, thickness: 5),

              Center(
                child: Text(
                  'Create A sHope acCount',
                  style: GoogleFonts.playfair(
                    color: Colorcontsance.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Loginpage()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colorcontsance.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 30,
                    ),
                    child: Text(
                      'Login',
                      style: GoogleFonts.tenorSans(color: Colorcontsance.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Registerpage()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colorcontsance.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 30,
                    ),
                    child: Text(
                      'Register',
                      style: GoogleFonts.tenorSans(color: Colorcontsance.white),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Colorcontsance.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 30,
                  ),
                  child: Text(
                    'Logout',
                    style: GoogleFonts.tenorSans(color: Colorcontsance.white),
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
