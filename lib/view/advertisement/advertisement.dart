import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottery_shope/constance/advertisementimages.dart';
import 'package:lottery_shope/constance/colorcontsance.dart';
import 'package:url_launcher/url_launcher.dart';

class Adverticement extends StatelessWidget {
  const Adverticement({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: Advertisementimages.imagead.length,
      itemBuilder:
          (context, index, realIndex) => Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(Advertisementimages.imagead[index]),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 20,
                  left: 20,
                  bottom: 10,
                  child: InkWell(
                    onTap: () async {
                      final Uri url = Uri.parse(
                        Advertisementimages.download[index],
                      );
                      if (await canLaunchUrl(url)) {
                        await launchUrl(
                          url,
                          mode: LaunchMode.externalApplication,
                        );
                      } else {
                        throw 'could not launch ${Advertisementimages.download[index]}';
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colorcontsance.blue),
                        color: Colorcontsance.white,
                      ),

                      child: Center(
                        child: Text(
                          'DOWNLOAD',
                          style: GoogleFonts.germaniaOne(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      options: CarouselOptions(
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,

        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
