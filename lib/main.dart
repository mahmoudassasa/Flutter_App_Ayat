// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Ayat(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Ayat extends StatefulWidget {
  const Ayat({super.key});

  @override
  State<Ayat> createState() => _AyatState();
}

class _AyatState extends State<Ayat> {
  List ayah = [
    {
      "Line1": "بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ 1",
      "Line2": "In the Name of Allah—the Most Compassionate, Most Merciful.",
    },
    {
      "Line1": "ٱلْحَمْدُ لِلَّهِ رَبِّ ٱلْعَـٰلَمِينَ 2",
      "Line2": "All praise is for Allah—Lord of all worlds,1",
    },
    {
      "Line1": "ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ 3",
      "Line2": "the Most Compassionate, Most Merciful,",
    },
    {
      "Line1": "مَـٰلِكِ يَوْمِ ٱلدِّينِ 4",
      "Line2": "Master of the Day of Judgment.",
    },
    {
      "Line1": "إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ 5",
      "Line2": "You ˹alone˺ we worship and You ˹alone˺ we ask for help.",
    },
    {
      "Line1": "ٱهْدِنَا ٱلصِّرَٰطَ ٱلْمُسْتَقِيمَ 6",
      "Line2": "Guide us along the Straight Path,",
    },
    {
      "Line1":
          "صِرَٰطَ ٱلَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ ٱلْمَغْضُوبِ عَلَيْهِمْ وَلَا ٱلضَّآلِّينَ 7",
      "Line2":
          "the Path of those You have blessed—not those You are displeased with, or those who are astray.1",
    }
  ];
  int indexer = 0;

  changeIndex(String direction) {
    switch (direction) {
      case "right":
       setState(() {
        if (indexer == ayah.length - 1) {
          indexer = ayah.length - 1;
        } else {
          indexer++;
        }
      });
        break;
         case "left":
        setState(() {
        if (indexer == 0) {
          indexer = 0;
        } else {
          indexer--;
        }
      });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              ayah[indexer]["Line1"],
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              // textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              ayah[indexer]["Line2"],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              // textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    changeIndex("left");
                  },
                  backgroundColor: Colors.amber,
                  child: Icon(
                    Icons.arrow_left,
                    size: 60,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                FloatingActionButton(
                  onPressed: () {
                    changeIndex("right");
                  },
                  backgroundColor: Colors.amber,
                  child: Icon(
                    Icons.arrow_right,
                    size: 60,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
