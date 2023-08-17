//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

Widget MyScearch({
  required String hinttext,
  //required IconData suffixicon,
  required String img,
}) {
  return Expanded(
    child: Container(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
            hintText: hinttext,
            fillColor: Colors.white,
            filled: true,
            suffixIcon: Image(image: AssetImage(img)),
            // SvgPicture.asset(
            //   img,
            // ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 217, 217, 217)),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            )),
      ),
    ),
  );
}

Widget MyButton({
  required String textbutton,
  required Color color,
  required Color textcolor,
  required Color bordercolor,
  //required double size,
  //String? img,
}) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
        //disabledBackgroundColor: color,
        backgroundColor: color,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
          side: BorderSide(
            color: bordercolor,
          ),
        ),
        //const StadiumBorder(),
        //shadowColor: Colors.grey,
        minimumSize: Size(75, 32)),
    child: Text(
      textbutton,
      style: TextStyle(color: textcolor, fontSize: 12),
    ),
  );
}

Widget MyButton2({
  required String textbutton,
  required Color color,
  required Color colortext,
  required double size,
}) {
  return Container(
    width: size,
    height: 32,
    decoration: BoxDecoration(
      color: color,
      border: Border.all(color: Color.fromARGB(26, 109, 109, 109), width: 1),
      borderRadius: BorderRadius.circular(16),
    ),
    child: InkWell(
        onTap: () {},
        //borderRadius: BorderRadius.circular(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image(image: AssetImage(img!)),
            Text(
              textbutton,
              style: TextStyle(fontSize: 14, color: colortext),
            ),
          ],
        )),
  );
}

Widget MyStack_Row({
  required String img1,
  required String text1stack1,
  required String text2stack1,
  required String text3stack1,
  required double height,
  required double width,
}) {
  return Stack(
    children: [
      Container(
        height: height,
        //MediaQuery.of(context).size.height * 0.295,
        width: width,
        decoration: BoxDecoration(
            color: Colors.black12,
            image: DecorationImage(
              image: AssetImage(img1),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              Text(
                text1stack1,
                style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
              Text(
                text2stack1,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              const Spacer(),
              Text(
                text3stack1,
                style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    ],
  );
}

Widget MyStack_Col({
  required String img2,
  required String text1stack2,
  required String text2stack2,
  required String text3stack2,
  required double height,
  required double width,
}) {
  return Stack(
    children: [
      Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Colors.black12,
            image: DecorationImage(
              image: AssetImage(img2),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1stack2,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Row(
                children: [
                  Text(
                    text2stack2,
                    style: GoogleFonts.nunito(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  const Spacer(),
                  Text(
                    text3stack2,
                    style: GoogleFonts.nunito(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget NavigatButton({
  required String icon,
  required String text,
}) {
  return FloatingActionButton(
      onPressed: () {},
      // style: ElevatedButton.styleFrom(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      // ),
      backgroundColor: Colors.white,
      elevation: 0,
      child: Column(
        children: [
          SvgPicture.asset(icon),
          const SizedBox(
            height: 2,
          ),
          Text(
            text,
            style: GoogleFonts.nunito(
                fontSize: 10, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ],
      ));
}

Widget ContainerForImag({
  required String bgimg,
}) {
  return Container(
    width: double.infinity,
    height: 128,
    //margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(bgimg), fit: BoxFit.cover),
        color: Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(8))),
  );
}
