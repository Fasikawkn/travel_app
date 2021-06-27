import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:page_transition/page_transition.dart';
import 'package:travel_app/Widgets/star_icon.dart';
import 'package:travel_app/screens/place_detail.dart';

class TourPlace extends StatelessWidget {
  final String id;
  final String text1;
  final String text2;
  final String imageUrl;
  final double rating;

  TourPlace(
      {required this.id,
      required this.text1,
      required this.text2,
      required this.imageUrl,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => this.selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 6,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topRight: Radius.circular(
                      (20),
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/${this.imageUrl}',
                    height: height * 0.36,
                    width: width * 0.7,
//                    height: 350,
//                    width: 280,
                    fit: BoxFit.cover,
                  ),
//                child: Image.network(this.imageUrl, ),
                ),
                Positioned(
                    top: height * 0.02,
                    right: width * 0.02,
                    child: Container(
                      height: height * 0.055,
                      width: width * 0.12,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: IconButton(
                        icon: Icon(
                          Icons.bookmark,
                          color: Colors.deepPurple,
                          size: height / width * 13,
                        ),
                        onPressed: () {},
                      ),
                    )),
                Positioned(
                  bottom: height * 0.05,
                  left: width * 0.055,
                  child: Container(
                    width: 150,
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
//                      buildRating(this.rating),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            StarIcon(iconData: Icons.star),
                            StarIcon(iconData: Icons.star),
                            StarIcon(iconData: Icons.star),
                            StarIcon(iconData: Icons.star),
                            StarIcon(iconData: Icons.star_half),
                            Text(
                              "${this.rating}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )
                          ],
                        ),
                        SizedBox(
//                          height: 10,
                          height: height * 0.02,
                        ),
                        Text(
                          this.text1,
                          style: TextStyle(
                            fontSize: height / width * 12,
                            color: Colors.white,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
//                        SizedBox(
//                          height: height * 0.00005,
//                        ),
                        Text(
                          this.text2,
                          style: TextStyle(
                            fontSize: height / width * 12,
                            color: Colors.white,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void selectMeal(BuildContext context) {
    Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.rightToLeft,
            duration: Duration(milliseconds: 500),
            child: PlaceDetail(
              id: this.id,
              text1: this.text1,
              text2: this.text2,
              imageUrl: this.imageUrl,
              rating: this.rating,
            )));
  }
}
