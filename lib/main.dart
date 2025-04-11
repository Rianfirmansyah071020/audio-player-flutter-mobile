import 'package:audio_player/home/home.dart';
import 'package:audio_player/listmusikalbum/list_musik_album.dart';
import 'package:flutter/material.dart';
import 'package:audio_player/components/colors.dart' as ColorCustom;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: ColorCustom.background,
      darkTheme: ThemeData.dark(),

      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/listmusikalbum': (context) => ListMusikAlbumPage(),
      },
    );
  }
}
