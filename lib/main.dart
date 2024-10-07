import 'package:flutter/material.dart';
import 'main_attendance.dart';
import 'main_leave.dart';
import 'main_analysis.dart';
import 'main_team.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double largeTextSize = screenWidth * 0.08;
    double smallTextSize = screenWidth * 0.04;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(''),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.3,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF455781),
                        Color(0xFF20283B),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rudraksh',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: largeTextSize,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  '2241340',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: smallTextSize,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: screenWidth * 0.02),
                              child: Container(
                                width: screenWidth * 0.26,
                                height: screenHeight * 0.33,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFD8E1EA),
                                  border: Border.all(
                                    color: const Color(0xFF94A4C9),
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30), // Ensure the image corners match the container
                                  child: Image.asset(
                                    'assets/images/IMG_3976.JPG', // Path to the image
                                    fit: BoxFit.cover, // Adjust this to your needs (e.g., BoxFit.fill, BoxFit.contain)
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '87%',
                                    style: TextStyle(
                                      fontSize: largeTextSize,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Overall',
                                    style: TextStyle(
                                      fontSize: smallTextSize,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                ],
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.07),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '13',
                                    style: TextStyle(
                                      fontSize: largeTextSize,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Present',
                                    style: TextStyle(
                                      fontSize: smallTextSize,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                ],
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.07),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '15',
                                    style: TextStyle(
                                      fontSize: largeTextSize,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Total',
                                    style: TextStyle(
                                      fontSize: smallTextSize,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth * 0.44,
                  height: screenHeight * 0.17,
                  padding: const EdgeInsets.all(3.7),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => AttendancePage())
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color>((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return const Color(0xFF566DA1);
                        }
                        return const Color(0xC7C0CFFA);
                      }),
                      foregroundColor:
                          MaterialStateProperty.resolveWith<Color>((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.white;
                        }
                        return Colors.black;
                      }),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                      minimumSize:
                          MaterialStateProperty.all(const Size(10, 10)),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 25,
                          left: 12,
                          child: Text(
                            'Attendance',
                            style: TextStyle(
                              fontSize: smallTextSize + 7,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 9,
                          child: Icon(
                            Icons.class_outlined,
                            size: screenHeight * 0.06,
                            color: const Color(0xFF6F83B1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: screenWidth * 0.03),
                Container(
                  width: screenWidth * 0.44,
                  height: screenHeight * 0.17,
                  padding: const EdgeInsets.all(3.7),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => main_leave()));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color>((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return const Color(0xFF566DA1);
                        }
                        return const Color(0xC7C0CFFA);
                      }),
                      foregroundColor:
                          MaterialStateProperty.resolveWith<Color>((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.white;
                        }
                        return Colors.black;
                      }),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                      minimumSize:
                          MaterialStateProperty.all(const Size(10, 10)),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 25,
                          left: 12,
                          child: Text(
                            'Leave',
                            style: TextStyle(
                              fontSize: smallTextSize + 7,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 9,
                          child: Icon(
                            Icons.file_copy_outlined,
                            size: screenHeight * 0.06,
                            color: const Color(0xFF6F83B1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.023),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth * 0.44,
                  height: screenHeight * 0.17,
                  padding: const EdgeInsets.all(3.7),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => main_analysis()));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color>((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return const Color(0xFF566DA1);
                        }
                        return const Color(0xC7C0CFFA);
                      }),
                      foregroundColor:
                          MaterialStateProperty.resolveWith<Color>((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.white;
                        }
                        return Colors.black;
                      }),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                      minimumSize:
                          MaterialStateProperty.all(const Size(10, 10)),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 25,
                          left: 12,
                          child: Text(
                            'Analysis',
                            style: TextStyle(
                              fontSize: smallTextSize + 7,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 9,
                          child: Icon(
                            Icons.auto_graph_outlined,
                            size: screenHeight * 0.06,
                            color: const Color(0xFF6F83B1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: screenWidth * 0.03),
                Container(
                  width: screenWidth * 0.44,
                  height: screenHeight * 0.17,
                  padding: const EdgeInsets.all(3.7),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => main_team()));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color>((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return const Color(0xFF566DA1);
                        }
                        return const Color(0xC7C0CFFA);
                      }),
                      foregroundColor:
                          MaterialStateProperty.resolveWith<Color>((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.white;
                        }
                        return Colors.black;
                      }),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                      minimumSize:
                          MaterialStateProperty.all(const Size(10, 10)),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 25,
                          left: 12,
                          child: Text(
                            'Team',
                            style: TextStyle(
                              fontSize: smallTextSize + 7,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 9,
                          child: Icon(
                            Icons.people_alt_outlined,
                            size: screenHeight * 0.06,
                            color: const Color(0xFF6F83B1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
