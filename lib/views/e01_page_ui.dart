// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    E01PageUi(),
  );
}

class E01PageUi extends StatefulWidget {
  const E01PageUi({super.key});

  @override
  State<E01PageUi> createState() => _E01PageUiState();
}

class _E01PageUiState extends State<E01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/imge1.png',
              height: 400.0,
            ),
            Text(
              'BERRY JUICE',
              style: GoogleFonts.merriweather(
                fontSize: 35.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'A"Moments of healtly sip',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'The best vitamin for your health',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    // child: Text(  ครอบ text ด้วย row
                    'Explore Now',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 30.0,
                    color: Colors.grey[200],
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 254, 132, 39),
                fixedSize: Size(
                  MediaQuery.of(context).size.width - 80.0, //กว้าง
                  55.0, //สูง
                  // กว้างหน้านี้ไม่ได้ ครอบด้วยPadding ถ้าต้องการให้ปุ่ม ลดขนาด จากที่กว้างเต็มพื้นที่ ก็ -80  มาจาก ลดขวา 40 และ ลดซ้าย 40
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
