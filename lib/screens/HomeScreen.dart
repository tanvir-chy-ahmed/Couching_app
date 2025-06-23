import 'package:flutter/material.dart';
import 'package:success_academy_v1/components/TopClasses.dart';
import 'package:success_academy_v1/components/featuredteachers.dart';
import 'package:success_academy_v1/screens/subscreens/NoticesScreen.dart';
import 'package:success_academy_v1/screens/PaymentScreen.dart';
import 'package:success_academy_v1/screens/ScheduleScreen.dart';

import '../components/img_slider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [

                  AutoImageSlider(),

              ],
            ),

            SizedBox(height: 10),

            Text(
              "\t\t Featured Teachers",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Column(children: [ImageRowDemo()]),
            ),

            Text(
              "\t\t Top Classes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),

            subjectListWidget(), // 🔥 Use it like a normal widget

            SizedBox(height: 10),

            Text(
              "\t\t Quick Actions",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // 👇 This is your button logic
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> ScheduleScreen()));
                  },
                  label: Text(
                    "Class Schedule",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    // Button color
                    foregroundColor: Colors.white,
                    // Text/Icon color
                    elevation: 10,
                    minimumSize: Size(80, 20),
                    // Shadow depth
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // Rounded corners
                    ),
                    shadowColor: Colors.deepPurpleAccent,
                    // side: BorderSide(color: Colors.white, width: 2), // Border
                  ),
                ),



                ElevatedButton.icon(
                  onPressed: () {
                    // 👇 This is your button logic
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> PaymentScreen()));
                  },
                  label: Text(
                    "Monthly Payment",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    // Button color
                    foregroundColor: Colors.white,
                    // Text/Icon color
                    elevation: 10,
                    minimumSize: Size(80, 20),
                    // Shadow depth
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // Rounded corners
                    ),
                    shadowColor: Colors.deepPurpleAccent,
                    // side: BorderSide(color: Colors.white, width: 2), // Border
                  ),
                ),



              ],
            ),

            SizedBox(height: 20),

            Container(
              margin: EdgeInsets.only(left: 110),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // 👇 This is your button logic
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> NoticesScreen()));
                    },
                    label: Text(
                      "Notices",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 20),
                      backgroundColor: Colors.deepPurple,
                      // Button color
                      foregroundColor: Colors.white,
                      // Text/Icon color
                      elevation: 10,
                      // Shadow depth
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // Rounded corners
                      ),
                      shadowColor: Colors.deepPurpleAccent,
                      // side: BorderSide(color: Colors.white, width: 2), // Border
                    ),
                  ),

                ],
              ),
            ),





            SizedBox(height: 100),

          ],
        ),
      ),
    );
  }
}
