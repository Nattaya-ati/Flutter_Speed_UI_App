import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/a01_page_ui.dart';
import 'package:flutter_speed_ui_app/views/a02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/b01_page_ui.dart';
import 'package:flutter_speed_ui_app/views/b02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/b03_page_ui.dart';
import 'package:flutter_speed_ui_app/views/c01_paga_ui.dart';
import 'package:flutter_speed_ui_app/views/c02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/c03_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e01_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e03_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e04_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e05_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e06_page_ui.dart';
import 'package:flutter_speed_ui_app/views/home_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    FlutterSpeedUi(),
  );
}

//------------------------------------------
class FlutterSpeedUi extends StatefulWidget {
  const FlutterSpeedUi({super.key});

  @override
  State<FlutterSpeedUi> createState() => _FlutterSpeedUiState();
}

class _FlutterSpeedUiState extends State<FlutterSpeedUi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: C03PageUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
