import 'package:flutter/material.dart';
import 'package:lottery_shope/constance/indexconstance.dart';

class Shopealert extends StatefulWidget {
  const Shopealert({super.key});

  @override
  State<Shopealert> createState() => _ShopealertState();
}

class _ShopealertState extends State<Shopealert> {
  List shopeimage = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTxfsrBHNd9kYErKspYfrIqkbFnPti4isHXQ&s',
    'https://compote.slate.com/images/85f2c0ce-32c2-443f-ad1d-e1124992381d.jpg',
    'https://img.mathrubhumi.com/view/acePublic/alias/contentid/1kw4cz8w0ikyj4sp9i3/1/kerala-lottery-ticket-jpg.webp?f=3%3A2&q=0.75&w=900',
    'https://media.gettyimages.com/id/2213786061/photo/a-small-shop-sells-lottery-tickets-in-thiruvananthapuram-kerala-india-on-april-25-2024.jpg?s=612x612&w=gi&k=20&c=X-3_IHQDN7XJESZPldFEV5il-s4_Hk0Uyj_wiKY70fE=',
    'https://img.onmanorama.com/content/dam/mm/en/kerala/top-news/images/2025/2/3/kerala-lottery-a.jpg?w=1120&h=583',
    'https://miro.medium.com/v2/resize:fit:1400/1*cgyk0Qx2JCsvauaqJzLJUw.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blueGrey,
      title: Center(
        child: Text(
          'SHOPE IMAGES',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: shopeimage.length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
          ),
          itemBuilder:
              (context, index) => InkWell(
                onTap: () {
                  Indexconstance.selectedshope = index;
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(shopeimage[index]),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child:
                      Indexconstance.selectedshope == index
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
        if (Indexconstance.selectedshope != null)
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
