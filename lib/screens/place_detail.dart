import 'package:flutter/material.dart';
import 'package:travel_app/Widgets/place_info.dart';
import 'package:travel_app/Widgets/star_icon.dart';

class PlaceDetail extends StatelessWidget {
  static const routeName = '/place-detail';

  final String id;
  String text1;
  String text2;
  String imageUrl;
  double rating;

  PlaceDetail({
    required this.id,
    required this.text1,
    required this.text2,
    required this.imageUrl,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/${this.imageUrl}"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      color: Colors.transparent,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                      color: Colors.transparent,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.2,
              ),
              Positioned(
                bottom: height * 0.05,
                left: width * 0.055,
                child: Container(
                  width: 150,
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 15),
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
                            fontSize: height / width * 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
//                        SizedBox(
//                          height: height * 0.00005,
//                        ),
                      Text(
                        this.text2,
                        style: TextStyle(
                            fontSize: height / width * 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.08,
              ),
              Expanded(
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    child: PlaceInformation()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
