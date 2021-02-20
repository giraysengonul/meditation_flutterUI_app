import 'package:flutter/material.dart';
import 'package:meditation_flutter_app/widgets/search_bar.dart';
import 'package:meditation_flutter_app/widgets/seasion_card.dart';
import 'package:meditation_flutter_app/widgets/bottomNavItem.dart';

class Detailsscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
        height: 80.0,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavItem(
              icon: Icon(Icons.today),
              title: "Today",
              press: () {},
            ),
            BottomNavItem(
              icon: Icon(
                Icons.spa_outlined,
                color: Colors.deepPurpleAccent,
              ),
              title: "All Exercises",
              press: () {},
              isActive: true,
            ),
            BottomNavItem(
              icon: Icon(Icons.settings_sharp),
              title: "Settings",
              press: () {},
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.centerRight,
            height: size.height * .45,
            decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                image: DecorationImage(
                  scale: 5,
                  alignment: Alignment.centerRight,
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2012/04/01/18/09/yoga-23824_1280.png"),
                )),
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
                        .display1
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "5-15 MIN Course",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                      width: size.width * .6,
                      child: Text(
                          "For a healthy life do not \nneglect meditation\nstudy daily!!")),
                  SizedBox(
                    width: size.width * .5,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 45.0),
                      child: SearchBar(),
                    ),
                  ),
                  Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    children: [
                      SeassionCard(
                        seassionNum: 1,
                        isDone: true,
                        press: () {},
                      ),
                      SeassionCard(
                        seassionNum: 2,
                        press: () {},
                      ),
                      SeassionCard(
                        seassionNum: 3,
                        press: () {},
                      ),
                      SeassionCard(
                        seassionNum: 4,
                        press: () {},
                      ),
                      SeassionCard(
                        seassionNum: 5,
                        press: () {},
                      ),
                      SeassionCard(
                        seassionNum: 6,
                        press: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Meditation",
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13.0),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: Colors.grey)
                      ],
                    ),
                    child: Row(
                      children: [
                        Image.network(
                          "https://cdn.pixabay.com/photo/2019/12/24/08/46/pregnant-woman-doing-yoga-4716243_1280.png",
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Basic 2",
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              Text("Start your deepen you pratice"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(Icons.lock_outlined),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
