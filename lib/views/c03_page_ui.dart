// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    C03PageUi(),
  );
}

class C03PageUi extends StatefulWidget {
  const C03PageUi({super.key});

  @override
  State<C03PageUi> createState() => _C03PageUiState();
}

class _C03PageUiState extends State<C03PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        // ใช้ Stack เพื่อวางตำแหน่ง Widget ทับซ้อนกัน
        children: [
          // ส่วนของ UI เดิม (แถบสถานะด้านบน, ฟอร์ม)
          SingleChildScrollView(
            child: Column(
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '9:19',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: const [
                            Icon(Icons.signal_cellular_4_bar, size: 20),
                            SizedBox(width: 6),
                            Icon(Icons.wifi, size: 20),
                            SizedBox(width: 6),
                            Icon(CupertinoIcons.battery_0, size: 24),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // ไม่ต้องมี SizedBox(height: 150.0) ตรงนี้แล้ว
                // เพราะรูป H จะถูกวางด้วย Positioned
                SizedBox(
                    height:
                        100.0), // อาจจะปรับความสูงเพื่อให้เนื้อหาเริ่มต้นต่ำลงมา
                Text(
                  'Create your account',
                  style: GoogleFonts.merriweather(
                    fontSize: 30.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Name',
                        style: TextStyle(fontSize: 18.0, color: Colors.black87),
                      ),
                      const SizedBox(height: 8.0),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                                color: Colors.white, width: 1.0),
                          ),
                          hintText: 'ex: John Smith',
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 191, 172, 172),
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'Email',
                        style: TextStyle(fontSize: 18.0, color: Colors.black87),
                      ),
                      const SizedBox(height: 8.0),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                                color: Colors.white, width: 1.0),
                          ),
                          hintText: 'ex: jon.smith@email.com',
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 191, 172, 172),
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'Password',
                        style: TextStyle(fontSize: 18.0, color: Colors.black87),
                      ),
                      const SizedBox(height: 8.0),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                                color: Colors.white, width: 1.0),
                          ),
                          hintText: '***********',
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 191, 172, 172),
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'Confirm Password',
                        style: TextStyle(fontSize: 18.0, color: Colors.black87),
                      ),
                      const SizedBox(height: 8.0),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                                color: Colors.white, width: 1.0),
                          ),
                          hintText: '***********',
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 191, 172, 172),
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          height: 55.0,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 37, 140, 37),
                                Color.fromARGB(255, 75, 237, 196),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'SIGN UP',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      const Center(
                        child: Text(
                          'or sign up with',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 173, 171, 171),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Image.asset(
                              'assets/images/imge3.png',
                              width: 50.0,
                              height: 50.0,
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(16),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          ElevatedButton(
                            onPressed: () {},
                            child: Image.asset(
                              'assets/images/imge4.png',
                              width: 50.0,
                              height: 50.0,
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(16),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          ElevatedButton(
                            onPressed: () {},
                            child: Image.asset(
                              'assets/images/imge5.png',
                              width: 50.0,
                              height: 50.0,
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(16),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Have an account?",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 19.0,
                            ),
                          ),
                          const SizedBox(width: 4.0),
                          InkWell(
                            onTap: () {},
                            child: const Text(
                              'SIGN IN',
                              style: TextStyle(
                                color: Color.fromARGB(255, 97, 196, 117),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // วางรูปภาพ H ด้วย Positioned เพื่อให้อยู่มุมบนขวา
          Positioned(
            top:
                60.0, // ปรับค่า top เพื่อเว้นระยะจากขอบบน (อาจจะ 0 หรือ 20 หรือมากกว่าตามต้องการ)
            right: 40.0, // ปรับค่า right เพื่อเว้นระยะจากขอบขวา
            child: Container(
              height: 40.0,
              width: 40.0, // กำหนดความกว้างด้วย
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border.all(color: Colors.green, width: 4.0), // กรอบสีเขียว
                borderRadius: BorderRadius.circular(12.0), // มุมมน
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/images/imgc2.png',
                  // ไม่ต้องกำหนด alignment ตรงนี้แล้ว เพราะ Positioned จะจัดการตำแหน่งให้
                  fit: BoxFit.cover, // ทำให้รูปภาพเต็มพื้นที่ Container
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
