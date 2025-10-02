import 'package:flutter/material.dart';
import 'package:lottery_shope/constance/indexconstance.dart';

class Licensealert extends StatefulWidget {
  const Licensealert({super.key});

  @override
  State<Licensealert> createState() => _LicensealertState();
}

class _LicensealertState extends State<Licensealert> {
  List licenseimage = [
    'https://omegaoffsetprinters.in/wp-content/uploads/2024/05/gram-panchayat-shop-licence.webp',
    'https://omegaoffsetprinters.in/wp-content/uploads/2024/05/gram-panchayat-shop-licence.webp',
    'https://omegaoffsetprinters.in/wp-content/uploads/2024/05/gram-panchayat-shop-licence.webp',
    'https://omegaoffsetprinters.in/wp-content/uploads/2024/05/gram-panchayat-shop-licence.webp',
    'https://omegaoffsetprinters.in/wp-content/uploads/2024/05/gram-panchayat-shop-licence.webp',
    'https://omegaoffsetprinters.in/wp-content/uploads/2024/05/gram-panchayat-shop-licence.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blueGrey,
      title: Center(
        child: Text(
          'LICENSE IMAGES',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: licenseimage.length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
          ),
          itemBuilder:
              (context, index) => InkWell(
                onTap: () {
                  Indexconstance.licenseimage = index;
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(licenseimage[index]),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child:
                      Indexconstance.licenseimage == index
                          ? Column(
                            children: [
                              Spacer(),
                              Container(
                                color: Colors.green,
                                child: Text(
                                  'selected',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          )
                          : null,
                ),
              ),
        ),
      ),
      actions: [
        if (Indexconstance.licenseimage != null)
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () async {},
              child: Text('Save'),
            ),
          ),
      ],
    );
  }
}
