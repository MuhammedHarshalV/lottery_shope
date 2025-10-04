import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_shope/constance/colorcontsance.dart';
import 'package:lottery_shope/view/advertisement/advertisement.dart';

class Progresspage extends StatefulWidget {
  const Progresspage({super.key});

  @override
  State<Progresspage> createState() => _ProgresspageState();
}

class _ProgresspageState extends State<Progresspage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorcontsance.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Status Page',
            style: GoogleFonts.orbitron(
              color: Colorcontsance.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colorcontsance.red,
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colorcontsance.red,
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    'TODAY EARNINGS',
                    style: GoogleFonts.orbitron(
                      color: Colorcontsance.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '1000 IND',
                    style: GoogleFonts.orbitron(
                      color: Colors.greenAccent,

                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colorcontsance.blue,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Processing',
                      style: GoogleFonts.orbitron(
                        color: Colorcontsance.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 10,
            children: [
              Adverticement(),
              Divider(color: Colorcontsance.red, thickness: 5),
            ],
          ),
        ),
      ),
    );
  }
}
