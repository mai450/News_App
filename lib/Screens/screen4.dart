import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/Screens/screen3..dart';
import 'package:news_app/widget/comp.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => NewsScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 16,
            )),
        //BackButton(),
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text(
            'Hot Updates',
            style: GoogleFonts.nunito(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 255, 109, 117),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerForImag(bgimg: 'assets/img7.png'),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Monday, 10 May 2021',
                style: GoogleFonts.nunito(
                    fontSize: 12, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'WHO classifies triple-mutant Covid variant from India as global health risk',
                style: GoogleFonts.newTegomin(
                    fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'A World Health Organization official said Monday it is reclassifying the highly contagious triple-mutant Covid variant spreading in India as a “variant of concern,” indicating that it’s become a...Read More',
                style: GoogleFonts.nunito(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Published by Berkeley Lovelace Jr.',
                style: GoogleFonts.nunito(
                    fontSize: 12, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),
              ContainerForImag(bgimg: 'assets/img5.png'),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Sunday, 9 May 2021',
                style: GoogleFonts.nunito(
                    fontSize: 12, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'What to do if you'
                '\'re planning or attending a wedding during the pandemic',
                style: GoogleFonts.newTegomin(
                    fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'They had the artsy, rustic venue, the tailored dress and a guest list including about 150 of their closest friends and family. But the pandemic had other plans, forcing Carly Chalmers and Mitchell Gauvin to make a difficult decision about their wedding... Read More',
                style: GoogleFonts.nunito(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Published by Kristen Rogers',
                style: GoogleFonts.nunito(
                    fontSize: 12, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
