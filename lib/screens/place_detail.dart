import 'package:flutter/material.dart';
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
                      onPressed: () {},
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
              
            ],
          ),
        ),
      ),
    );
  }
}
