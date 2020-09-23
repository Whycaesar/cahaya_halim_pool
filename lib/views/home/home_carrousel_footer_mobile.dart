import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  '''
“After hearing a few nightmare stories from neighbors and coworkers regarding their pool builds, I decided against the big builders and I went with Cahaya Halim Pools based on a recommendation from one of your satisfied customers.”
“I am writing to tell you how pleased I am with the overall experience of having my pool built by your company. Cahaya Halim Pools always showed when they said they would show. If a sub-contractor was going to be a little late or was going to take a little longer than planned, I always heard about it first from the project manager.”
“Your project manager showed a lot of patience when my wife and I took 3 times to figure the exact placement of the pool and moved trees instead of bulldozing them which was a huge plus for my wife and daughter. What really impressed me was being kept in the loop on any budget changes as I changed the scope of the job to include more features like the expanded stone patio, bench and landscaping.”
“There were no budget surprises at the end of the build. We love our new pool. I will probably never move, but if I do and need another pool, you will be my first call.“
“Thanks again to you and your staff for fantastic customer service.”

Adrian.
Kemang, South Jakarta
''',
  '''
“As we began to think about adding a pool, we started talking to friends who had put in pools. All we heard was one pool horror story after another. So as we went through our pool installation, we were waiting for the horror day to occur. Thankfully for us, that day never came. Our pool was put in on-time and on-budget. We did not expect either. We had several pool companies propose on our pool. What turned us to Cahaya Halim Pools were:”
  “He had a vision for the pool and put himself in the homeowners shoes and thought about how it would look from the windows of the house, walking room around the pool, seating areas, umbrellas, sound of the waterfall, etc. Many of these things we had not even thought of or considered, but I am sure glad they were part of the decision.”
  “Focus on the trees that we had. Keeping as many as we could, especially the larger ones, having adequate sunshine to warm the water, adequate shade from the sun, and minimal leaves and other debris in pool. Again, most of these things we had not even considered. “
  “Willingness for us to see some of his pools and have direct correspondence with the homeowners for a completely open dialogue.”
“As to why I would refer Cahaya Halim Pools without reservation, would be everything I just listed but I would also add that we were very impressed with Cahaya Halim Pools’s constant forethought of aesthetics. We are completely pleased with our pool and would happily refer others to use Cahaya Halim Pools.“

Hendrik.
Pondok Indah, South Jakarta
''',
  '''
“We moved into a new home recently and decided we wanted to add a pool to our outdoor stone patio for more entertainment space so we called around for companies to give us a quote. Halim came by and we discussed what we had in mind and listened to our thoughts, he made very good recommendations as to our current set up versus our original thoughts and we decided that his suggestions made more sense.”
“Once we got Halim’s quote, we agreed to proceed with Cahaya Halim Pools to do the work. Not only did they accomplish the work on time, but every day of the construction there was a supervisor here at least twice a day to be sure all was being done and done right.”
“The pool expansion is now complete, looks great and most importantly, they matched the stone we had along with the layout so it will be hard to tell that this is an addition.”
“We would highly recommend Cahaya Halim Pools to anyone who wants their work done right and on time.“

Alya.
Bogor, West Java
''',
  '''
Thanks to Cahaya Halim Pools, we have a lovely outdoor living area complete with pool, spa, swim-up bar and cabana. Owner Halim built our house and continued with his vision to extend our outdoor entertainment area to poolside. As we are on a hillside with a great view, Halim and his team, created a multi-level deck where the view can be appreciated from every angle.
We are very fortunate to have found Cahaya Halim Pools and to have been able to create a great pool area with several water features, perfect for our lot. The cost was especially affordable, given the unique design and attention to details.
Thanks Cahaya Halim Pools. We have all good things to say about you and the building of our pool!

Steven & Kristin.
PIK, North Jakarta
''',
  '''
“Dear Mr. Halim, I am writing to tell you how much we love our pool! Out of everyone we talked to (other pools companies), I was most impressed with the knowledge and the time that was taken with me and my wife. It was very easy to pick Cahaya Halim Pools as our builder. I felt like Halim really understood the complexities of our yard. He was also very helpful to me in helping me pick out colors for tiles, coping, retaining walls, etc.”
“As the actual building process began, of course the rains began as well. Our excavator stayed here late into the evening hours. He hit rock within an inch, and hit blue rock at about 7 feet. Plus my yard drops about a story and a half from the street level to the level of the pool, so each bobcat trip was a tricky one. I know he had bad dreams about our yard at night. Asrul was our superintendent. He was an absolute joy to work with. He did a good job of keeping me informed of what was happening next, and what I needed to be doing.”
“Everyone I dealt with was a delight to work with. I never worried about leaving my house or my two daughters. That says a lot!!!”
“Thank you again for our beautiful pool. We will be recommending you to others.“

Rian
Sentul, West Java
''',
];

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

class HomeCarrouselFooterMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          height: 50,
        ),
        Container(
            // height: MediaQuery.of(context).size.height * 1,
            // margin: EdgeInsets.only(
            //   left: 100,
            //   right: 100,
            // ),
            // color: Colors.yellow,
            child: CarouselSlider(
          options: CarouselOptions(
              aspectRatio: 1,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              autoPlay: true,
              disableCenter: true),
          items: imgList
              .map((item) => Container(
                    padding: EdgeInsets.only(
                      left: 50,
                      right: 50,
                    ),
                    child: Center(
                        child: Text(
                      item.toString(),
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w100,
                        height: 1.4,
                        letterSpacing: 1,
                      ),
                    )),
                  ))
              .toList(),
        )),
      ],
    );
  }
}
