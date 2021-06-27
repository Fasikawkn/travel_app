import 'package:flutter/material.dart';
import 'package:travel_app/Demmy%20Data/demmy_data.dart';
import 'package:travel_app/Widgets/popular_place.dart';
import 'package:travel_app/Widgets/sight.dart';
import 'package:travel_app/Widgets/tab_button.dart';

const color = const Color(0xffe1e8f2);

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;

  void _changePage(int pageNum) {
    setState(() {
      _selectedPage = pageNum;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: color,
        body: Container(
          padding: EdgeInsets.symmetric(
              vertical: height * 0.03, horizontal: width * 0.04),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Explore",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                    Container(
                      height: height * 0.10,
                      width: width * 0.13,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      margin: EdgeInsets.only(
                          right: width * 0.05, top: height * 0.01),
                      child: IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {},
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height / 2 * 0.05,
                ),
                Row(
                  children: [
                    TabButton(
                        text: 'Sights',
                        selectedPage: _selectedPage,
                        pageNumber: 0,
                        width: width,
                        onPressed: () {
                          _changePage(0);
                        }),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    TabButton(
                        text: 'Tours',
                        selectedPage: _selectedPage,
                        pageNumber: 1,
                        width: width,
                        onPressed: () {
                          _changePage(1);
                        }),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    TabButton(
                        text: 'Adventures',
                        selectedPage: _selectedPage,
                        pageNumber: 2,
                        width: width,
                        onPressed: () {
                          _changePage(2);
                        }),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    child: Text("23 Sights",
                        style: TextStyle(fontSize: height / width * 8))),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          child: TourPlace(
                            id: DUMMY_SIGHTS[0].id,
                            imageUrl: DUMMY_SIGHTS[0].imageUrl,
                            text1: DUMMY_SIGHTS[0].text1,
                            text2: DUMMY_SIGHTS[0].text2,
                            rating: DUMMY_SIGHTS[0].rating,
                          )),
                      Container(
                          alignment: Alignment.topLeft,
                          child: TourPlace(
                            id: DUMMY_SIGHTS[1].id,
                            imageUrl: DUMMY_SIGHTS[1].imageUrl,
                            text1: DUMMY_SIGHTS[1].text1,
                            text2: DUMMY_SIGHTS[1].text2,
                            rating: DUMMY_SIGHTS[1].rating,
                          )),
                      Container(
                          alignment: Alignment.topLeft,
                          child: TourPlace(
                            id: DUMMY_SIGHTS[2].id,
                            imageUrl: DUMMY_SIGHTS[2].imageUrl,
                            text1: DUMMY_SIGHTS[2].text1,
                            text2: DUMMY_SIGHTS[2].text2,
                            rating: DUMMY_SIGHTS[2].rating,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Popular",
                    style: TextStyle(
                        fontSize: height / width * 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Column(
                  children: DUMMY_POPULAR_PLACES
                      .map((place) => PopularPlace(
                          id: place.id,
                          imageUrl: place.imageUrl,
                          title: place.name,
                          date: place.date))
                      .toList(),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
          },
          items: [
            BottomNavigationBarItem(
              label: 'Favorites',
              icon: Container(
                  height: height * 0.045,
                  width: width * 0.1,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100)),
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: height / width * 13,
                  )),
            ),
            BottomNavigationBarItem(
              label: 'Music',
              icon: Icon(Icons.search,
                  color: Colors.black, size: height / width * 13),
            ),
            BottomNavigationBarItem(
              label: 'Places',
              icon: Icon(Icons.save,
                  color: Colors.black, size: height / width * 13),
            ),
            BottomNavigationBarItem(
              label: 'News',
              icon: Icon(Icons.library_books,
                  color: Colors.black, size: height / width * 13),
            ),
          ],
        ),
      ),
    );
  }
}
