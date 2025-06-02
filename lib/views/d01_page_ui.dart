// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(
    D01PageUi(),
  );
}

class D01PageUi extends StatefulWidget {
  const D01PageUi({super.key});

  @override
  State<D01PageUi> createState() => _D01PageUiState();
}

class _D01PageUiState extends State<D01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Transform.translate(
                  offset: Offset(0, 1.0),
                  child: Image.asset(
                    'assets/images/imgd1.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                    height: 200), // เผื่อพื้นที่เพื่อให้ Stack ซ้อน button ได้
              ],
            ),
            Transform.translate(
              offset: Offset(0, -50.0),
              child: Image.asset(
                'assets/images/imgd2.png',
              ),
            ),
            Transform.translate(
              offset: Offset(0, 60.0),
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Add login action
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    MediaQuery.of(context).size.width * 0.8,
                    70.0,
                  ),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Transform.translate(
              offset: Offset(0, 150.0),
              child: OutlinedButton(
                onPressed: () {
                  // TODO: Add login action
                },
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    MediaQuery.of(context).size.width * 0.8,
                    70.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Transform.translate(
              offset: Offset(0, 230.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      // TODO: เพิ่มฟังก์ชันเมื่อลิงก์ถูกแตะ
                    },
                    child: Text(
                      'Continue as Guest',
                      style: TextStyle(
                        color: Color.fromARGB(255, 45, 219, 242),
                        fontSize: 16.0,
                        decoration: TextDecoration.underline,
                        decorationColor: Color.fromARGB(255, 45, 219, 242),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
