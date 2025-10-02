import 'package:flutter/material.dart';
import 'package:lottery_shope/constance/indexconstance.dart';

class Chequealert extends StatefulWidget {
  const Chequealert({super.key});

  @override
  State<Chequealert> createState() => _ChequealertState();
}

class _ChequealertState extends State<Chequealert> {
  List chequeimage = [
    'https://live.staticflickr.com/65535/50001406707_2c0ebe55d8_h.jpg',
    'https://www.arthamsu.com/wp-content/uploads/2025/06/What-is-Cheque-Leaf-and-How-Does-It-Work.jpg',
    'https://live.staticflickr.com/65535/50001406707_2c0ebe55d8_h.jpg',
    'https://www.arthamsu.com/wp-content/uploads/2025/06/What-is-Cheque-Leaf-and-How-Does-It-Work.jpg',
    'https://live.staticflickr.com/65535/50001406707_2c0ebe55d8_h.jpg',
    'https://www.arthamsu.com/wp-content/uploads/2025/06/What-is-Cheque-Leaf-and-How-Does-It-Work.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blueGrey,
      title: Center(
        child: Text(
          'CHEQUELEAF IMAGES',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: chequeimage.length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
          ),
          itemBuilder:
              (context, index) => InkWell(
                onTap: () {
                  Indexconstance.chequeleafimage = index;
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(chequeimage[index]),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child:
                      Indexconstance.chequeleafimage == index
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
        if (Indexconstance.chequeleafimage != null)
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
