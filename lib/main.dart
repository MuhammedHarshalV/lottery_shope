import 'package:flutter/material.dart';
import 'package:lottery_shope/view/bottomscreens/Progress/progresspage.dart';
import 'package:lottery_shope/view/bottomscreens/account/accountscreen.dart';
import 'package:lottery_shope/view/bottomscreens/bottomnavscreen.dart';
import 'package:lottery_shope/view/bottomscreens/home/homepage.dart';

void main() {
  runApp(Shopeapp());
}

class Shopeapp extends StatefulWidget {
  const Shopeapp({super.key});

  @override
  State<Shopeapp> createState() => _ShopeappState();
}

class _ShopeappState extends State<Shopeapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottomnavscreen(),
    );
  }
}
