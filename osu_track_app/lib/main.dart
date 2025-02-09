import 'package:flutter/material.dart';
import 'package:osu_track_app/src/pages/authorization_page.dart';
import 'src/utils/color_contrasts.dart' as my_colors;
import 'package:device_preview/device_preview.dart';

void main() => runApp(DevicePreview(builder: (BuildContext context) => MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OsuTrackApp',
      theme: ThemeData(
        primarySwatch:  my_colors.Palette.pink,
        backgroundColor: my_colors.Palette.brown,
      ),
      home: LoginScreen(),);
  }
}