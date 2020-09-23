import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:cahaya_halim_pool/constants/app_colors.dart';

// ignore: must_be_immutable
class CourseDetails extends StatelessWidget {
  String imageHome;
  String headlineHome;
  String subHeadlineHome;
  String subHeadLine2lineHome;
  String descHeadlingHome;

  CourseDetails(this.imageHome, this.headlineHome, this.subHeadlineHome,
      this.subHeadLine2lineHome, this.descHeadlingHome);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformatin) {
        var textAlignment =
            sizingInformatin.deviceScreenType == DeviceScreenType.Desktop
                ? TextAlign.center
                : TextAlign.center;
        double titleSize =
            sizingInformatin.deviceScreenType == DeviceScreenType.Mobile
                ? 26
                : 44;
        double descriptionSize =
            sizingInformatin.deviceScreenType == DeviceScreenType.Mobile
                ? 18
                : 28;

        double addDescriptionSize =
            sizingInformatin.deviceScreenType == DeviceScreenType.Mobile
                ? 12
                : 17;

        double linkSize =
            sizingInformatin.deviceScreenType == DeviceScreenType.Mobile
                ? 14
                : 21;

        return Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          margin: EdgeInsets.only(bottom: 11),
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              FittedBox(
                child: Image.asset(
                  "images/" + imageHome.toString() + ".jpg",
                ),
                fit: BoxFit.fill,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 88),
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      // height: MediaQuery.of(context).size.height * 0.5,
                      // width:  MediaQuery.of(context).size.width * 1,
                      child: Column(
                        children: [
                          Text(
                            headlineHome,
                            style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.w600,
                              height: 2,
                              fontSize: titleSize,
                            ),
                            textAlign: textAlignment,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            subHeadlineHome,
                            style: TextStyle(
                              fontSize: descriptionSize,
                              height: 1,
                              color: whiteColor,
                              // backgroundColor: Colors.pink,
                            ),
                            textAlign: textAlignment,
                          ),
                          Text(
                            subHeadLine2lineHome,
                            style: TextStyle(
                              fontSize: descriptionSize,
                              height: 1,
                              color: whiteColor,
                              // backgroundColor: Colors.amber,
                            ),
                            textAlign: textAlignment,
                          ),
                          Text(
                            descHeadlingHome,
                            style: TextStyle(
                              fontSize: addDescriptionSize,
                              height: 0.9,
                              color: greyColor,
                            ),
                            textAlign: textAlignment,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                color: Colors.red,
                                child: Row(
                                  children: [
                                    Text(
                                      'Learn More',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: linkSize),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Colors.blue,
                                      size: linkSize,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 50,
                                // color: Colors.green,
                                child: Row(
                                  children: [
                                    Text(
                                      'Buy',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: linkSize,
                                      ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Colors.blue,
                                      size: linkSize,
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
