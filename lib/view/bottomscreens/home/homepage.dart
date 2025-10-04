import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_shope/constance/colorcontsance.dart';
import 'package:lottery_shope/view/advertisement/advertisement.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List ticketnumber = [];
  TextEditingController ticketender = TextEditingController();
  TextEditingController priceenter = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorcontsance.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Home Page',
            style: GoogleFonts.orbitron(
              color: Colorcontsance.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colorcontsance.red,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 10,
              children: [
                Adverticement(),
                Divider(color: Colorcontsance.red, thickness: 5),

                textfielddetails(),
                GridView.builder(
                  itemCount: ticketnumber.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 50,
                  ),
                  itemBuilder:
                      (context, index) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colorcontsance.red,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Flexible(
                                child: Text(
                                  ticketnumber[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colorcontsance.white,
                                  ),
                                ),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  ticketnumber.removeAt(index);
                                  setState(() {});
                                },
                                child: Icon(Icons.disabled_by_default_outlined),
                              ),
                            ],
                          ),
                        ),
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container textfielddetails() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colorcontsance.red),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 10,
        children: [
          TextField(
            controller: ticketender,
            decoration: InputDecoration(
              hintText: 'Add Ticket Number',
              hintStyle: TextStyle(color: Colorcontsance.red),
              border: InputBorder.none,
            ),
          ),
          TextField(
            controller: priceenter,
            decoration: InputDecoration(
              hintText: 'Ticket Price',
              hintStyle: TextStyle(color: Colorcontsance.red),
              border: InputBorder.none,
            ),
          ),
          InkWell(
            onTap: () {
              if (ticketender.text.isNotEmpty) {
                ticketnumber.add(ticketender.text);
              }
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colorcontsance.blue,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Save',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colorcontsance.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
