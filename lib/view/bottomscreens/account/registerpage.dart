import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_shope/constance/colorcontsance.dart';
import 'package:lottery_shope/view/advertisement/advertisement.dart';
import 'package:lottery_shope/view/bottomscreens/account/alertdialog/aadharalert.dart';
import 'package:lottery_shope/view/bottomscreens/account/alertdialog/chequealert.dart';
import 'package:lottery_shope/view/bottomscreens/account/alertdialog/license.dart';
import 'package:lottery_shope/view/bottomscreens/account/alertdialog/shopealert.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  List submitimage = [
    'Submit Shope Photo',
    'submit Aadhar Photo',
    'Submit Shope License Photo',
    'Submit Cheque Leaf Photo',
  ];
  List<Widget> showDialogscreens = [
    Shopealert(),
    Aadharalert(),
    Licensealert(),
    Chequealert(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorcontsance.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Registration Page',
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
                textfielddetails(hinttext: 'Shope Name'),
                textfielddetails(hinttext: 'Owner Name'),
                textfielddetails(hinttext: 'Shope License Number'),
                textfielddetails(hinttext: 'Bank Account Number'),

                textfielddetails(hinttext: 'Re-enter Bank Account Number'),
                textfielddetails(hinttext: 'IFSC Code'),
                textfielddetails(hinttext: 'Login Username'),
                textfielddetails(hinttext: 'Login Password'),
                textfielddetails(hinttext: 'Phone Number'),
                GridView.builder(
                  itemCount: 4,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder:
                      (context, index) => Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(submitimage[index]),
                              IconButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder:
                                        (context) => showDialogscreens[index],
                                  );
                                },
                                icon: Icon(Icons.camera_alt_outlined),
                              ),
                            ],
                          ),
                        ),
                      ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colorcontsance.blue,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colorcontsance.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colorcontsance.red),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://cdn.prod.website-files.com/659415b46df8ea43c3877776/65b7abcdfef77d3fc701df45_Headspace-email-footer-example.jpeg',
                      ),
                      fit: BoxFit.fill,
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
