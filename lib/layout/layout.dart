import 'package:flutter/material.dart';
import 'package:audio_player/components/colors.dart' as ColorCustom;

class Layout extends StatefulWidget {
  final AppBar appBar;
  final Widget body;

  const Layout({super.key, required this.appBar, required this.body});

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
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              gradient: ColorCustom.backgroundNavBottom,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: ColorCustom.iconNavBottomColor,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    icon: const Icon(Icons.home, color: Colors.white70),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: ColorCustom.iconNavBottomColor,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    icon: const Icon(Icons.home, color: Colors.white70),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: ColorCustom.iconNavBottomColor,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    icon: const Icon(Icons.home, color: Colors.white70),
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
