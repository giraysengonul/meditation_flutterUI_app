import 'package:flutter/material.dart';
import 'package:meditation_flutter_app/screens/details_screen.dart';
import 'widgets/bottomNavItem.dart';
import 'widgets/home_card.dart';
import 'widgets/search_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme:
            Theme.of(context).textTheme.apply(displayColor: Colors.white),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
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
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2018/01/17/06/07/silhouette-3087521_1280.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52.0,
                      width: 52.0,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent[400],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.menu),
                    ),
                  ),
                  Text(
                    "Good Morning",
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      children: [
                        HomeCard(
                          imageurl:
                              "https://cdn.pixabay.com/photo/2017/07/19/16/45/cooking-2519657_1280.png",
                          title: "Diet Recommendation",
                          press: () {},
                        ),
                        HomeCard(
                          imageurl:
                              "https://cdn.pixabay.com/photo/2017/10/01/20/15/practising-2806844_1280.png",
                          title: "Kagel Exercises",
                          press: () {},
                        ),
                        HomeCard(
                          imageurl:
                              "https://cdn.pixabay.com/photo/2014/04/03/10/05/yoga-309782_1280.png",
                          title: "Meditation",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Detailsscreen();
                                },
                              ),
                            );
                          },
                        ),
                        HomeCard(
                          imageurl:
                              "https://cdn.pixabay.com/photo/2019/10/06/21/45/meditation-4531253_1280.png",
                          title: "Yoga",
                          press: () {},
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
