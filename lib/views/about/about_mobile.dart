import 'package:cahaya_halim_pool/constants/app_colors.dart';
import 'package:cahaya_halim_pool/views/contact/contact_detail_mobile.dart';
import 'package:cahaya_halim_pool/views/footer/footer_view.dart';
import 'package:flutter/material.dart';

class AboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 30,
        ),
        Stack(
          children: [
            Container(
              child: Image.asset(
                "images/homeicon3.jpg",
                height: 150,
                width: MediaQuery.of(context).size.width * 1,
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(top: 30),
                width: 300,
                height: 90,
                color: Color.fromRGBO(30, 20, 225, 0.2),
                child: Center(
                    child: Text(
                  "ABOUT US",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "Open Sans",
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 40,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 5.0,
                          color: themaColor,
                        ),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About Cahaya Halim Pool",
                          style: TextStyle(
                            fontSize: 26,
                            letterSpacing: 2,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          """
Denali Pools is a local company serving Central Texas. We pride ourselves on relationships, quality, and trust. Denali Pools is a sister company to Glazier Custom Homes.
How did Denali Pools come to be? New Custom Home owners requested that Glazier Homes build their pool to match the quality and attention to detail they appreciated in their new homes. Owner and Builder Jared Glazier took on the challenge. Denali Pools was born! The company has rapidly expanded and become the most sought after pool builder in the Austin area today.

Denali Pools is not a volume/production pool builder. We build true CUSTOM pools. Your possibilities are endless when it comes to designing and building your own personal oasis. Your pool designer will help you create your backyard getaway. At Denali Pools, we work with you every step of the way to create a one-of-a-kind design that is a reflection of you and your family. The choices are limited only by your imagination.

Reputation is Everything. Every project we complete says who we are. It is of the utmost importance to us that our customers have a rewarding experience and are 100% satisfied with their pool. We use only the finest materials and equipment. Reputation is Everything!
Your time is valuable! We will begin and complete your pool on time. We know you would like to start swimming as soon as possible.

Denali Pools believes in constant communication. This means that we LISTEN to you as the customer. To ensure your peace of mind during the design and construction of your Denali pool, we will work with you every step of the way answering questions and maintaining our unsurpassed level of Communication.

We take pride in every pool and spa we build. We know you will enjoy the process, and we hope you will tell everyone about Denali Pools!""",
                          style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 1.4,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Container(
                    // alignment: Alignment.center,
                    height: 150,
                    child: Image.asset(
                      "images/homeicon5.jpg",
                      width: MediaQuery.of(context).size.width * 1,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(
                      //   width: 30,
                      // ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.only(
                            top: 5,
                            left: 5,
                            right: 5,
                            bottom: 30,
                          ),
                          child: Image.asset(
                            "images/homeicon1.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.only(
                            top: 5,
                            left: 5,
                            right: 5,
                            bottom: 30,
                          ),
                          child: Image.asset(
                            "images/homeicon2.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.only(
                            top: 5,
                            left: 5,
                            right: 5,
                            bottom: 30,
                          ),
                          child: Image.asset(
                            "images/homeicon3.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.only(
                            top: 5,
                            left: 5,
                            right: 5,
                            bottom: 30,
                          ),
                          child: Image.asset(
                            "images/homeicon4.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 40,
                ),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 40,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 5.0,
                            color: themaColor,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                                width: 100,
                                height: 100,
                                child: Image.asset('images/logo-bbb-top.png')),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "BBB- \"Better Business Bureau\"",
                            style: TextStyle(
                              fontSize: 26,
                              letterSpacing: 2,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            """
The BBB is a private, non-profit organization whose mission is to promote and foster the highest ethical standards between companies and their customers in the areas of:

  1.  Dependable Service
  2.  Honesty In Advertising
  3.  Honest Business Practices
  4.  Reliable Complaint Handling Procedures

Examples of services provided by the BBB are Business Reliability Reports, Dispute Resolution, Truth-in-Advertising, Consumer and Business Education and Charity Review.""",
                            style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 1.4,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Center(
                            child: Text(
                              "To be a member of the BBB, an applicant must:",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            """ 
                        
Be invited to apply for membership by a staff person or Director of the Bureau.

Be actively engaged in business, in the BBB’s service area, for no less than 6 months.

Supply background information about the company, its principals or other information deemed essential to the BBB.

Cooperate with the BBB’s activities and efforts to promote voluntary self-regulation within the business industry.

Adhere to established BBB standards of advertising and selling, including the Code of Online Business Practices for online businesses that apply for the BBBOnLine Reliability logo, and cooperate with the BBB in matters relating thereto.

Promptly respond to any and all complaints forwarded by the BBB, and make good faith efforts to resolve all such complaints in accordance with generally accepted good business practices.

Comply with any decisions rendered through the Bureau’s or an alternative provider’s binding arbitration program.

Eliminate the underlying causes of patterns of consumer complaints that the BBB may call to the company’s attention.

Be free from an unsatisfactory report at the BBB in whose service area the company is headquartered.

Be free from any governmental action concerning the marketplace and its customers that demonstrates a significant failure of the company to support the principals and purposes of the BBB.

Support the principles and purposes of the BBB and not engage in any activity that reflects unfavorably on the BBB and its members.

Refrain from using the name or logo of the BBB for commercial, sales or advertising purposes in any manner not specifically authorized in writing by the BBB.

Promptly notify the Bureau of any changes in ownership, licensing status, addresses, telephone numbers, web site and any other information deemed necessary by the Bureau.

Fulfill all licensing and bonding requirements of applicable city, county, state and federal agencies and authorities, and provide license numbers upon application for BBB membership and provide periodic updates on request of the BBB.
""",
                            style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 1.4,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Businesses earning the right to be included in this organization have a strong reputation of taking care of their customers.",
                            style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 1.4,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 40,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 5.0,
                                  color: themaColor,
                                ),
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Center(
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    child:
                                        Image.asset('images/pentairWater.png'),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Pentair Water",
                                  style: TextStyle(
                                    fontSize: 26,
                                    letterSpacing: 2,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  """
Pentair Aquatic Systems is the world’s leading manufacturer of pool and spa equipment. By applying imaginative thinking and the latest technology, their equipments help pool owners get more energy efficiency, enhanced safety, longer service life, cleaner water, more dependability, easier operation and the latest trends making pool ownership more convenient, enjoyable, and affordable than ever before.
                          """,
                                  style: TextStyle(
                                    fontSize: 16,
                                    letterSpacing: 1.4,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 5.0,
                                  color: themaColor,
                                ),
                              ),
                            ),
                            child: Column(
                              children: [
                                Center(
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    child:
                                        Image.asset('images/logo-apsp-top.png'),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "APSP - \"The Association of Pool & Spa Professionals\"",
                                  style: TextStyle(
                                    fontSize: 26,
                                    letterSpacing: 2,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                    bottom: 50,
                                  ),
                                  child: Text(
                                    """
The APSP is the world’s largest international trade association representing the swimming pool, spa, hot tub and recreational water industries. APSP is the leading industry advocate promoting professional best practices through education, industry standards, and safety.

APSP members adhere to a code of ethics in business and technical practices and share a strong commitment to the safe, healthful, and enjoyable use of industry products.

The APSP effectively replaced another well-known industry organization known as “National Pool and Spa Institute” or NSPI in 2006.                          """,
                                    style: TextStyle(
                                      fontSize: 16,
                                      letterSpacing: 1.4,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Image.asset('images/assets/about1.JPG'),
                          SizedBox(
                            height: 30,
                          ),
                          Image.asset('images/assets/about2.JPG'),
                          SizedBox(
                            height: 50,
                          )
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        ContactDetailMobile(),
        FooterView()
      ],
    );
  }
}