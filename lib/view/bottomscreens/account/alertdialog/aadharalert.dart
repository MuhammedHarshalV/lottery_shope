import 'package:flutter/material.dart';
import 'package:lottery_shope/constance/indexconstance.dart';

class Aadharalert extends StatefulWidget {
  const Aadharalert({super.key});

  @override
  State<Aadharalert> createState() => _AadharalertState();
}

class _AadharalertState extends State<Aadharalert> {
  List aadharimage = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBJuPSRMZhq-H8FmIWgNYjYBO2YEmL6s4PmQ&s',
    'https://5.imimg.com/data5/SELLER/Default/2020/12/VL/QR/OE/80995112/white-pre-printed-aadhar-card-500x500.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsA6Q4QZDUyQ4akVB_snt3KpGlwBKewW56aQ&s',
    'https://media.licdn.com/dms/image/v2/C4D12AQGYD-TTz1x2UA/article-cover_image-shrink_600_2000/article-cover_image-shrink_600_2000/0/1520082857182?e=2147483647&v=beta&t=5TNc643P28mu4fFkqPYBly0MWMXz44mYwXINHL53Hgk',
    'https://c.ndtvimg.com/2021-01/e5rvkilo_aadhaarpvccardlarge_625x300_25_January_21.jpg?downsize=545:307',
    'https://www.jagranimages.com/images/newimg/04122022/04_12_2022-18_10_2022-29_05_2022-aadhar_22754683_23148320_23243558.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blueGrey,
      title: Center(
        child: Text(
          'AADHAR IMAGES',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: aadharimage.length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
          ),
          itemBuilder:
              (context, index) => InkWell(
                onTap: () {
                  Indexconstance.aadharimage = index;
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(aadharimage[index]),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child:
                      Indexconstance.aadharimage == index
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
        if (Indexconstance.aadharimage != null)
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
