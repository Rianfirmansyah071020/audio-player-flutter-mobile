import 'package:flutter/material.dart';
import 'package:audio_player/components/colors.dart' as ColorCustom;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Layout extends StatefulWidget {
  final AppBar appBar;
  final Widget body;
  final String keyPage;

  const Layout({
    super.key,
    required this.appBar,
    required this.body,
    required this.keyPage,
  });

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: ColorCustom.backgroundGradient),
      child: SafeArea(
        child: Scaffold(
          appBar: widget.appBar,
          body: Container(
            decoration: BoxDecoration(color: ColorCustom.background),
            child: widget.body,
          ),
          bottomNavigationBar: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              // boxShadow: [
              //   BoxShadow(
              //     blurRadius: 5,
              //     color: Colors.black54,
              //     offset: Offset(1, 1),
              //   ),
              // ],
              // color: Colors.white,
              // borderRadius: const BorderRadius.only(
              //   topLeft: Radius.circular(25),
              //   topRight: Radius.circular(25),
              //   bottomLeft: Radius.circular(25),
              //   bottomRight: Radius.circular(25),
              // ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: ColorCustom.iconNavBottomColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.blueAccent,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                  child: IconButton(
                    isSelected: widget.keyPage == "home" ? true : false,
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    selectedIcon: const Icon(
                      FontAwesomeIcons.house,
                      color: Colors.lightBlueAccent,
                      size: 20,
                    ),
                    icon: const Icon(
                      FontAwesomeIcons.house,
                      color: Colors.blueAccent,
                      size: 20,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: ColorCustom.iconNavBottomColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.blueAccent,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/listmusikalbum');
                    },
                    selectedIcon: const Icon(
                      FontAwesomeIcons.music,
                      color: Colors.lightBlueAccent,
                      size: 20,
                    ),

                    isSelected:
                        widget.keyPage == "listmusikalbum" ? true : false,
                    icon: const Icon(
                      FontAwesomeIcons.music,
                      color: Colors.blueAccent,
                      size: 20,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: ColorCustom.iconNavBottomColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.blueAccent,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    icon: const Icon(
                      FontAwesomeIcons.clockRotateLeft,
                      color: Colors.blueAccent,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
