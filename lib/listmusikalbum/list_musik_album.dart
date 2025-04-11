import 'package:audio_player/layout/layout.dart';
import 'package:flutter/material.dart';

class ListMusikAlbumPage extends StatefulWidget {
  const ListMusikAlbumPage({super.key});

  @override
  State<ListMusikAlbumPage> createState() => _ListMusikAlbumPageState();
}

class _ListMusikAlbumPageState extends State<ListMusikAlbumPage> {
  @override
  Widget build(BuildContext context) {
    return Layout(
      keyPage: "listmusikalbum",
      appBar: AppBar(title: const Text("List Musik Album")),
      body: Container(),
    );
  }
}
