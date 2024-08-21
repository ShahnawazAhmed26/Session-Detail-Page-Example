import 'package:flutter/material.dart';


class GUI extends StatefulWidget {
  @override
  _GUIState createState() => _GUIState();
}

class _GUIState extends State<GUI> with SingleTickerProviderStateMixin {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            'assets/93634.png', // Replace with your back button image asset path
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
          onPressed: () {
            Navigator.of(context).pop(); // Navigate back to the previous screen
          },
        ),
        title: Text(
          'Session Detail',
          style: TextStyle(fontFamily: 'Lato', fontSize: 40, color: Colors.green),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/1827272.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/cropped-image(1).png'),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: 400,
                height: 70,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(121, 154, 1, 1),
                      width: 6.0,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.only(),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Living Maths Grade 6 -8 ",
                      style: TextStyle(
                        fontFamily: "chalk",
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Container(
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/jonatan-pie-3l3RwQdHRHg-unsplash.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  _buildAnimatedRow(
                    label: "Time:",
                    value: "10:00 AM",
                    icon: 'assets/clock_2306(1).png',
                  ),
                  _buildAnimatedRow(
                    label: "Date:",
                    value: "16 Aug 2024",
                    icon: 'assets/299092_calendar_icon.png',
                  ),
                  _buildAnimatedRow(
                    label: "No of meetups:",
                    value: "5",
                    icon: 'assets/pngwing.com.png',
                  ),
                  _buildAnimatedRow(
                    label: "Price:",
                    value: "\$50",
                    icon: 'assets/vecteezy_price-tag-icon-design-vector-symbol-pricing-label_.png',
                  ),
                  Column(
                    children: [
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Text(
                                "Your Instructor",
                                style: TextStyle(
                                  fontFamily: "Lato",
                                  fontSize: 18,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Container(
                              width: 1,
                              color: Colors.green,
                              constraints: BoxConstraints(
                                minHeight: 90, // Increase this value to make the line taller
                                maxHeight: double.infinity,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage('assets/cropped-image(1).png'),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Steve Sherman",
                                style: TextStyle(
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

Widget _buildAnimatedRow({required String label, required String value, required String icon}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Image.asset(
                  icon,
                  width: 24,
                  height: 24,
                  fit: BoxFit.contain,
                ),
                SizedBox(width: 8),
                Text(
                  label,
                  style: TextStyle(fontSize: 18, color: Colors.red, fontFamily: "Lato"),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                value,
                style: TextStyle(fontSize: 18, color: Colors.red, fontFamily: "Lato"),
                textAlign: TextAlign.right, // Align text to the right
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 8), // Space between content and divider
      Divider(color: Colors.green, thickness: 1), // Single divider spanning across the entire row
    ],
  );
}
}
