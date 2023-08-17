import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/widget/comp.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  //final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: scaffoldKey,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              Row(
                children: [
                  MyScearch(
                      hinttext: 'COVID New Variant',
                      img: 'assets/Vector (1).png'),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 255, 109, 117),
                              //Color.fromARGB(255, 255, 109, 117),
                              shape: const StadiumBorder(),
                              //elevation: 10,
                              shadowColor: Colors.grey,
                              minimumSize: Size(
                                  MediaQuery.of(context).size.width * 0.2,
                                  MediaQuery.of(context).size.height * 0.0426)),
                          onPressed: () {
                            // scaffoldKey.currentState!
                            //     .showBottomSheet((context) {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.42,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(14))),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        //mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              height: 5,
                                              width: 72,
                                              decoration: const BoxDecoration(
                                                  color: Colors.black12,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              100))),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Filter',
                                                style: GoogleFonts.nunito(
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black),
                                              ),
                                              const Spacer(),
                                              ElevatedButton(
                                                  onPressed: () {},
                                                  style: ElevatedButton.styleFrom(
                                                      backgroundColor: Colors.white,
                                                      //Color.fromARGB(255, 255, 109, 117),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                        side: const BorderSide(
                                                            color:
                                                                Colors.black12,
                                                            width: 1),
                                                      ),
                                                      //const StadiumBorder(),
                                                      elevation: 0,
                                                      shadowColor: Colors.grey,
                                                      minimumSize: Size(75, 32)),
                                                  child: Row(
                                                    children: [
                                                      const Image(
                                                          image: AssetImage(
                                                              'assets/Vector (2).png')),
                                                      const SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text(
                                                        'Reset',
                                                        style:
                                                            GoogleFonts.nunito(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: Colors
                                                                    .black),
                                                      )
                                                    ],
                                                  )),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            'Sort By',
                                            style: GoogleFonts.nunito(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              MyButton2(
                                                  size: 120,
                                                  textbutton: 'Recommended',
                                                  color: Colors.white,
                                                  colortext: Colors.black),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              MyButton2(
                                                  size: 80,
                                                  textbutton: 'Lastest',
                                                  color: Colors.white,
                                                  colortext: Colors.black),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              MyButton2(
                                                  size: 100,
                                                  textbutton: 'Most Viewed',
                                                  color: Colors.white,
                                                  colortext: Colors.black),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              MyButton2(
                                                  size: 80,
                                                  textbutton: 'Channel',
                                                  color: Colors.white,
                                                  colortext: Colors.black),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              MyButton2(
                                                  size: 80,
                                                  textbutton: 'Following',
                                                  color: Colors.white,
                                                  colortext: Colors.black),
                                            ],
                                          ),
                                          const Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 12, vertical: 25),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 255, 109, 117),
                                                  //Color.fromARGB(255, 255, 109, 117),
                                                  shape: const StadiumBorder(),
                                                  //elevation: 10,
                                                  shadowColor: Colors.grey,
                                                  minimumSize: const Size(
                                                      double.infinity, 48)),
                                              child: Text(
                                                'SAVE',
                                                style: GoogleFonts.nunito(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white),
                                              ),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: const Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/Vector2.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Filter',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        MyButton(
                          textbutton: 'Healthy',
                          color: Colors.white,
                          textcolor: Colors.black,
                          bordercolor: Colors.black12,
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
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'About 11,130,000 results for',
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    ' COVID New Variant.',
                    style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              MyStack_Col(
                  height: MediaQuery.of(context).size.height * 0.160,
                  width: MediaQuery.of(context).size.width * 0.92,
                  img2: 'assets/img5.png',
                  text1stack2: 'What to do if you'
                      're planning or attending a wedding during the pandemic',
                  text2stack2: 'Zain Korsgaard',
                  text3stack2: 'Sunday, 9 May 2021'),
              const SizedBox(
                height: 8,
              ),
              MyStack_Col(
                  height: MediaQuery.of(context).size.height * 0.160,
                  width: MediaQuery.of(context).size.width * 0.92,
                  img2: 'assets/img6.jfif',
                  text1stack2: '4 ways families can ease anxiety together',
                  text2stack2: 'Zain Korsgaard',
                  text3stack2: 'Sunday, 9 May 2021'),
              const SizedBox(
                height: 8,
              ),
              MyStack_Col(
                  height: MediaQuery.of(context).size.height * 0.160,
                  width: MediaQuery.of(context).size.width * 0.92,
                  img2: 'assets/img4.jfif',
                  text1stack2: '4 ways families can ease anxiety together',
                  text2stack2: 'Zain Korsgaard',
                  text3stack2: 'Sunday, 9 May 2021'),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: MyStack_Col(
                    height: MediaQuery.of(context).size.height * 0.160,
                    width: MediaQuery.of(context).size.width * 0.92,
                    img2: 'assets/img6.jfif',
                    text1stack2: '4 ways families can ease anxiety together',
                    text2stack2: 'Zain Korsgaard',
                    text3stack2: 'Sunday, 9 May 2021'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
