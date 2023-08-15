//import 'dart:ffi';

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/widget/comp.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        MyScearch(
                            hinttext: 'Dogecoin to the Moon...',
                            img: 'assets/Vector.png'),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.04,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.092,
                          height: MediaQuery.of(context).size.height * 0.041,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color.fromARGB(212, 244, 67, 54),
                          ),
                          child:
                              //  SvgPicture.asset(
                              //   'assets/Group 38.svg',
                              // ),
                              Image(image: AssetImage('assets/Group 38.png')),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Latest News',
                          style: TextStyle(
                            fontFamily: 'NewYorkSmall',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'See All',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          size: 16,
                          color: Colors.blue,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            MyStack_Row(
                              img1: 'assets/img1.png',
                              text1stack1: 'by Ryan Browne',
                              text2stack1:
                                  'Crypto investors should be prepared to lose all their money, BOE governor says',
                              text3stack1:
                                  '“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”',
                              height:
                                  MediaQuery.of(context).size.height * 0.295,
                              width: MediaQuery.of(context).size.width * 0.856,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            MyStack_Row(
                              img1: 'assets/img2.png',
                              text1stack1: 'by Ryan Browne',
                              text2stack1:
                                  'Asia-Pacific markets trade broadly higher, oil prices climb',
                              text3stack1:
                                  '“Stock markets in Asia-Pacific were broadly higher on Monday following “a big miss” in the April U.S. jobs report, while oil futures advanced.',
                              height:
                                  MediaQuery.of(context).size.height * 0.295,
                              width: MediaQuery.of(context).size.width * 0.856,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MyButton(
                            textbutton: 'Healthy',
                            color: Color.fromARGB(255, 255, 109, 117),
                            textcolor: Colors.white,
                            bordercolor: Color.fromARGB(255, 255, 109, 117),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          MyButton(
                            textbutton: 'Technology',
                            color: Colors.white,
                            textcolor: Colors.black,
                            bordercolor: Colors.black12,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          MyButton(
                            textbutton: 'Finance',
                            color: Colors.white,
                            textcolor: Colors.black,
                            bordercolor: Colors.black12,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          MyButton(
                            textbutton: 'Art',
                            color: Colors.white,
                            textcolor: Colors.black,
                            bordercolor: Colors.black12,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          MyButton(
                            textbutton: 'Sport',
                            color: Colors.white,
                            textcolor: Colors.black,
                            bordercolor: Colors.black12,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    MyStack_Col(
                        height: MediaQuery.of(context).size.height * 0.1733,
                        width: MediaQuery.of(context).size.width * 0.92,
                        img2: 'assets/img3.jfif',
                        text1stack2: '5 things to know about the '
                            'conundrum'
                            'of lupus',
                        text2stack2: 'Matt Villano',
                        text3stack2: 'Sunday, 9 May 2021'),
                    const SizedBox(
                      height: 8,
                    ),
                    MyStack_Col(
                        height: MediaQuery.of(context).size.height * 0.1733,
                        width: MediaQuery.of(context).size.width * 0.92,
                        img2: 'assets/img4.jfif',
                        text1stack2:
                            '4 ways families can ease anxiety together',
                        text2stack2: 'Zain Korsgaard',
                        text3stack2: 'Sunday, 9 May 2021'),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: MyStack_Col(
                          height: MediaQuery.of(context).size.height * 0.1733,
                          width: MediaQuery.of(context).size.width * 0.92,
                          img2: 'assets/img5.png',
                          text1stack2: 'What to do if you'
                              're planning or attending a wedding during the pandemic',
                          text2stack2: 'Zain Korsgaard',
                          text3stack2: 'Sunday, 9 May 2021'),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 130),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.088,
                    width: MediaQuery.of(context).size.width * 0.7744,
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32))),
                      //BorderRadius.all(Radius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Row(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            NavigatButton(
                                icon: 'assets/Icon1.svg', text: 'Home'),
                            NavigatButton(
                                icon: 'assets/fav.svg', text: 'Favorite'),
                            NavigatButton(
                                icon: 'assets/Icon3.svg', text: 'Profile'),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
