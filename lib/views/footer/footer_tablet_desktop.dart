import 'package:cahaya_halim_pool/constants/app_colors.dart';
import 'package:flutter/material.dart';

class FooterTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 22),
            color: footerColor,
            // height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 1,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Flexible(
                  //   flex: 2,
                  //   child: Container(
                  //       child: Column(
                  //     children: [
                  //       Text(
                  //         "Belajar dan Belanja",
                  //         style: TextStyle(
                  //           color: whiteColor,
                  //           fontSize: 12,
                  //           height: 3,
                  //           fontWeight: FontWeight.w600,
                  //         ),
                  //       ),
                  //       Text("Mac"),
                  //       Text("iPad"),
                  //       Text("iPhone"),
                  //       Text("Watch"),
                  //       Text("TV"),
                  //       Text("Music"),
                  //       Text("AirPods"),
                  //       Text("iPod Touch")
                  //     ],
                  //   )),
                  // ),
                  // Flexible(
                  //   flex: 2,
                  //   child: Container(
                  //       child: Column(
                  //     children: [
                  //       Text(
                  //         "Layanan",
                  //         style: TextStyle(
                  //           color: whiteColor,
                  //           fontSize: 12,
                  //           height: 3,
                  //           fontWeight: FontWeight.w600,
                  //         ),
                  //       ),
                  //       Text("Apple Music"),
                  //       Text("Apple TV+"),
                  //       Text("Apple Arcade"),
                  //       Text("Apple Books"),
                  //       Text("iCloud"),
                  //       Text(
                  //         "Akun",
                  //         style: TextStyle(
                  //           color: whiteColor,
                  //           fontSize: 12,
                  //           height: 3,
                  //           fontWeight: FontWeight.w600,
                  //         ),
                  //       ),
                  //       Text("Kelola ID Apple Anda"),
                  //       Text("iCloud.com")
                  //     ],
                  //   )),
                  // ),
                  // Flexible(
                  //   flex: 2,
                  //   child: Container(
                  //       child: Column(
                  //     children: [
                  //       Text(
                  //         "Untuk Bisnis",
                  //         style: TextStyle(
                  //           color: whiteColor,
                  //           fontSize: 12,
                  //           height: 3,
                  //           fontWeight: FontWeight.w600,
                  //         ),
                  //       ),
                  //       Text("Apple dan Bisnis"),
                  //       Text(
                  //         "Untuk Pendidikan",
                  //         style: TextStyle(
                  //           color: whiteColor,
                  //           fontSize: 12,
                  //           height: 3,
                  //           fontWeight: FontWeight.w600,
                  //         ),
                  //       ),
                  //       Text("Apple dan Pendidikan"),
                  //     ],
                  //   )),
                  // ),
                  // Flexible(
                  //   flex: 2,
                  //   child: Container(
                  //       child: Column(
                  //     children: [
                  //       Text(
                  //         "Nilai-nilai Apple",
                  //         style: TextStyle(
                  //           color: whiteColor,
                  //           fontSize: 12,
                  //           height: 3,
                  //           fontWeight: FontWeight.w600,
                  //         ),
                  //       ),
                  //       Text("Aksesbilitas"),
                  //       Text("Lingkungan"),
                  //       Text("Privasi"),
                  //       Text("Tanggung Jawab Pemasok"),
                  //       Text(
                  //         "Tentang Apple",
                  //         style: TextStyle(
                  //           color: whiteColor,
                  //           fontSize: 12,
                  //           height: 3,
                  //           fontWeight: FontWeight.w600,
                  //         ),
                  //       ),
                  //       Text("Investor"),
                  //       Text("Acara"),
                  //       Text("Hubungi Apple")
                  //     ],
                  //   )),
                  // ),
                ]),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 2,
              bottom: 2,
              left: 50,
            ),
            color: backgroundBodyColor,
            width: MediaQuery.of(context).size.width * 1,
            height: 50,
            child: Row(
              children: [
                IconButton(
                  icon: Image.asset("images/ig.png"),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: Image.asset("images/fb.png"),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: Image.asset("images/in.png"),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: Image.asset("images/goo.png"),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: Image.asset("images/yt.png"),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 50,
            ),
            color: footerColor,
            height: 50,
            alignment: Alignment.centerLeft,
            child: Text(
              "Designed by WB Design Simple & Affordable ",
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
