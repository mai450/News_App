import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/Screens/screen2.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
              //color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage(
                    'assets/img1.png',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 52),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => SearchScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              child: SvgPicture.asset('assets/Group 26.svg'),
              // Text('gg'),
              // Image(image: AssetImage('assets/Group 26.svg'))
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.55,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1046,
                  ),
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.nunito(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                      children: [
                        const TextSpan(
                          text: 'LONDON — ',
                        ),
                        TextSpan(
                            text:
                                'Cryptocurrencies “have no intrinsic value” and people who invest in them should be prepared to lose all their money, Bank of England Governor Andrew Bailey said. \n \n Digital currencies like bitcoin, ether and even dogecoin have been on a tear this year, reminding some investors of the 2017 crypto bubble in which bitcoin blasted toward\$"20,000, only to sink as low as \$"3,122 a year later. \n \n Asked at a press conference Thursday about the rising value of cryptocurrencies, Bailey said: “They have no intrinsic value. That doesn’t mean to say people don’t put value on them, because they can have extrinsic value. But they have no intrinsic value.\n \n ” “I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.” Bailey’s comments echoed a similar warning from the U.K.’s Financial Conduct Authority. “Investing in cryptoassets, or investments and lending linked to them, generally involves taking very high risks with investors’ money,” the financial services watchdog said in January. “If consumers invest in these types of product, they should be prepared to lose all their money.” Bailey, who was formerly the chief executive of the FCA, has long been a skeptic of crypto. In 2017, he warned: “If you want to invest in bitcoin, be prepared to lose all your money.”',
                            style: GoogleFonts.nunito(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8393,
            height: MediaQuery.of(context).size.height * 0.1846,
            margin: const EdgeInsets.only(top: 280),
            decoration: const BoxDecoration(
                color: Color.fromARGB(243, 189, 196, 210),
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sunday, 9 May 2021',
                    style: GoogleFonts.nunito(
                        fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Crypto investors should be prepared to lose all their money, BOE governor says',
                    style: GoogleFonts.nunito(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Published by Ryan Browne',
                    style: GoogleFonts.nunito(
                        fontSize: 10, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: FloatingActionButton(
              onPressed: () {},
              child: Image(image: AssetImage('assets/Group.png')),
              shape: CircleBorder(),
              backgroundColor: Color.fromARGB(255, 255, 109, 117),
            ),
          ),
        )
      ]),
    );
  }
}
