import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants.dart';

import '../widgets/search_bar.dart';
import '../widgets/session_card.dart';

class DetailsScreen extends StatefulWidget {
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int _pageIndex = 0; // altura e largura total do dispositivo

  void _onItemTapped(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 32,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: "Today",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_gymnastics_sharp),
            label: "All Exercises",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        currentIndex: _pageIndex,
        selectedItemColor: kBlueColor,
        onTap: _onItemTapped,
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * .55,
            decoration: const BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assets/images/meditation_bg.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "Meditation",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          fontWeight: FontWeight.w900, fontFamily: "Cairo"),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "3-10 MIN Course",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: size.width * .6,
                      child: const Text(
                        "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5,
                      height: size.height * .17,
                      child: const SearchBar(),
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        SessionCard(
                          sessionNum: 1,
                          isDone: true,
                          press: () {},
                        ),
                        SessionCard(
                          sessionNum: 2,
                          press: () {},
                        ),
                        SessionCard(
                          sessionNum: 3,
                          press: () {},
                        ),
                        SessionCard(
                          sessionNum: 4,
                          press: () {},
                        ),
                        SessionCard(
                          sessionNum: 5,
                          press: () {},
                        ),
                        SessionCard(
                          sessionNum: 6,
                          press: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Meditation",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold, fontFamily: "Cario"),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/Meditation_women_small.svg",
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Basic 2",
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  ),
                                  Text("Start your deepen you practice")
                                ]),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: SvgPicture.asset("assets/icons/Lock.svg"))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
