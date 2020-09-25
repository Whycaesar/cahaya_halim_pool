import 'package:cahaya_halim_pool/localization/localization_constant.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeCarrouselFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      getTranslated(context, 'testimonial_comment_1'),
      getTranslated(context, 'testimonial_comment_2'),
      getTranslated(context, 'testimonial_comment_3'),
      getTranslated(context, 'testimonial_comment_4'),
      getTranslated(context, 'testimonial_comment_5'),
    ];

    // ignore: unused_local_variable
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Text(item),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            // child: Text(
                            //   'No. ${imgList.indexOf(item)} image',
                            //   style: TextStyle(
                            //     color: Colors.white,
                            //     fontSize: 20.0,
                            //     fontWeight: FontWeight.bold,
                            //   ),
                            // ),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();
    return Column(
      children: [
        Text(
          "\" Testimonials \"",
          style: TextStyle(
            fontSize: 24,
            letterSpacing: 2,
            color: Colors.blue,
            // fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            margin: EdgeInsets.only(
              left: 100,
              right: 100,
            ),
            // color: Colors.yellow,
            child: CarouselSlider(
              options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  disableCenter: true),
              items: imgList
                  .map((item) => Container(
                        padding: EdgeInsets.only(
                          left: 65,
                          right: 65,
                        ),
                        child: Text(
                          item.toString(),
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.w500,
                            height: 2,
                            letterSpacing: 1.4,
                          ),
                        ),
                        // color: Colors.green,
                      ))
                  .toList(),
            )),
      ],
    );
  }
}
