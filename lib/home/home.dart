import 'package:audio_player/layout/layout.dart';
import 'package:flutter/material.dart';
import 'package:audio_player/components/colors.dart' as ColorCustom;
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

Widget _contentSlide(String imagePath, String title, VoidCallback onTap) {
  return MouseRegion(
    cursor: SystemMouseCursors.click,
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        height: 160,
        width: 300,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.bottomLeft,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                blurRadius: 5,
                color: Colors.black54,
                offset: Offset(1, 1),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.music_note, color: ColorCustom.iconTitleColor),
            Text(
              "Audio Player",
              style: GoogleFonts.pacifico(
                color: ColorCustom.titleColor,
                fontSize: 18,
              ),
            ),
          ],
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: ColorCustom.appBarGradient,
            shape: BoxShape.rectangle,
          ),
        ),
        backgroundColor: ColorCustom.background,
        foregroundColor: ColorCustom.iconColor,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 8.0, bottom: 8.0),
            child: Row(
              children: [
                Icon(FontAwesomeIcons.solidHeart, color: Colors.red),
                SizedBox(width: 10),
                Container(
                  child: Text(
                    "List Album Terpopuler",
                    style: GoogleFonts.poppins(fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _contentSlide(
                  "assets/images/slides/dewa19.jpeg",
                  "Music 1",
                  () {
                    Navigator.pushNamed(context, '/listmusikalbum');
                  },
                ),
                _contentSlide("assets/images/slides/osean.jpeg", "Music 2", () {
                  Navigator.pushNamed(context, '/listmusikalbum');
                }),
                _contentSlide(
                  "assets/images/slides/ryanjones.jpeg",
                  "Music 3",
                  () {
                    Navigator.pushNamed(context, '/listmusikalbum');
                  },
                ),
                _contentSlide("assets/images/slides/shela.jpeg", "Music 3", () {
                  Navigator.pushNamed(context, '/listmusikalbum');
                }),
                _contentSlide(
                  "assets/images/slides/thebeat.jpeg",
                  "Music 3",
                  () {
                    Navigator.pushNamed(context, '/listmusikalbum');
                  },
                ),
                _contentSlide("assets/images/slides/tulus.jpeg", "Music 3", () {
                  Navigator.pushNamed(context, '/listmusikalbum');
                }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 12.0, bottom: 8.0),
            child: Row(
              children: [
                Icon(Icons.menu_sharp, color: ColorCustom.iconTitleColor),
                SizedBox(width: 10),
                Container(
                  child: Text(
                    "Semua List Album",
                    style: GoogleFonts.poppins(fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
