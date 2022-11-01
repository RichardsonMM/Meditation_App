import 'package:flutter/material.dart';
import 'package:meditation_app/constants.dart';

import '../widgets/search_bar.dart';
import '../widgets/session_card.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text(
                    "Meditation",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontWeight: FontWeight.w900),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "3-10 MIN Course",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: size.width * .6,
                    child: Text(
                      "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                    ),
                  ),
                  SizedBox(
                    width: size.width * .5,
                    child: SearchBar(),
                  ),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: const [
                      SessionCard(
                        sessionNum: 1,
                        isDone: true,
                      ),
                      SessionCard(
                        sessionNum: 2,
                      ),
                      SessionCard(
                        sessionNum: 3,
                      ),
                      SessionCard(
                        sessionNum: 4,
                      ),
                      SessionCard(
                        sessionNum: 5,
                      ),
                      SessionCard(
                        sessionNum: 6,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
